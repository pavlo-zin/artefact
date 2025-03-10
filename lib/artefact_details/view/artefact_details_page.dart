import 'dart:io';

import 'package:artefact/l10n/l10n.dart';
import 'package:artefact/overview/model/artefact.dart';
import 'package:artefact_ui/artefact_ui.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

final _focusNode = FocusNode();

class ArtefactDetailsPage extends StatelessWidget {
  const ArtefactDetailsPage({required this.artefactInfo, super.key});

  final Artefact artefactInfo;

  @override
  Widget build(BuildContext context) {
    final layout = ArtefactLayout.of(context);

    return Focus(
      onKeyEvent: (focus, onKey) => KeyEventResult.handled,
      child: KeyboardListener(
        focusNode: _focusNode,
        autofocus: true,
        onKeyEvent: (event) {
          if (event.logicalKey == LogicalKeyboardKey.escape) {
            context.pop();
          }
        },
        child: LayoutBuilder(
          builder: (context, _) {
            final isSmall = layout == ArtefactLayoutData.small;
            return Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                forceMaterialTransparency: true,
                toolbarHeight: 72,
                leadingWidth: 72,
                leading: IconButton.filledTonal(
                  icon: const Icon(Icons.arrow_back_sharp),
                  tooltip: context.l10n.actionBack,
                  onPressed: () => context.pop(),
                ),
              ),
              body:
                  isSmall
                      ? _SmallLayout(artefactInfo)
                      : _LargeLayout(artefactInfo),
            );
          },
        ),
      ),
    );
  }
}

class _LargeLayout extends StatelessWidget {
  const _LargeLayout(this.artefactInfo);

  final Artefact artefactInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: SizedBox.expand(
        child: Row(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.sizeOf(context).width / 2,
                maxHeight: MediaQuery.sizeOf(context).height / 1.2,
              ),
              child: _ArtefactMedia(artefactInfo),
            ),
            const Gap(32),
            Expanded(
              child: SingleChildScrollView(
                child: _ArtefactInfo(
                  isSmall: false,
                  artefactInfo: artefactInfo,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SmallLayout extends StatelessWidget {
  const _SmallLayout(this.artefactInfo);

  final Artefact artefactInfo;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Gap(20),
          Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.sizeOf(context).height / 4,
                  maxWidth: MediaQuery.sizeOf(context).width / 1.1,
                  maxHeight: MediaQuery.sizeOf(context).height / 1.5,
                ),
                child: _ArtefactMedia(artefactInfo),
              ),
              _ArtefactInfo(isSmall: true, artefactInfo: artefactInfo),
            ],
          ),
        ],
      ),
    );
  }
}

class _ArtefactMedia extends StatelessWidget {
  const _ArtefactMedia(this.artefactInfo);

  final Artefact artefactInfo;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb || Platform.isAndroid || Platform.isIOS) {
      return ModelViewer(
        poster: Uri.encodeFull(artefactInfo.posterUrl),
        src: Uri.encodeFull(artefactInfo.modelUrl),
      );
    }

    return SizedBox.expand(
      child: CachedNetworkImage(imageUrl: artefactInfo.posterUrl),
    );
  }
}

class _ArtefactInfo extends StatelessWidget {
  const _ArtefactInfo({required this.isSmall, required this.artefactInfo});

  final bool isSmall;
  final Artefact artefactInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isSmall ? 20 : 0),
      child: Column(
        children: [
          const Gap(24),
          Text(
            context.l10n.artefactId(artefactInfo.id),
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.w800,
            ),
          ).animate(delay: const Duration(milliseconds: 150)).fadeIn().slide(),
          const Gap(12),
          Text(
            artefactInfo.title,
            style: Theme.of(context).textTheme.displayLarge,
          ).animate(delay: const Duration(milliseconds: 250)).fadeIn().slide(),
          const Gap(30),
          const Divider()
              .animate(delay: const Duration(milliseconds: 400))
              .fadeIn()
              .scaleX(
                duration: Durations.extralong1,
                curve: Easing.standardDecelerate,
              ),
          const Gap(30),
          _ArtifactSummaryRow(
            title: context.l10n.epoch,
            value: artefactInfo.date,
          ).animate(delay: const Duration(milliseconds: 500)).fadeIn().slide(),
          const Gap(16),
          _ArtifactSummaryRow(
            title: context.l10n.valuation,
            value: artefactInfo.price,
          ).animate(delay: const Duration(milliseconds: 500)).fadeIn().slide(),
          const Gap(16),
          _ArtifactSummaryRow(
            title: context.l10n.geography,
            value: artefactInfo.location,
          ).animate(delay: const Duration(milliseconds: 500)).fadeIn().slide(),

          const Gap(16),
          _ArtifactSummaryRow(
            title: context.l10n.artefactType,
            value: artefactInfo.classification,
          ).animate(delay: const Duration(milliseconds: 500)).fadeIn().slide(),
          const Gap(32),
          Text(
                artefactInfo.description,
                style: Theme.of(context).textTheme.bodyLarge,
              )
              .animate(delay: const Duration(milliseconds: 600))
              .fadeIn()
              .slide(
                begin: const Offset(0, 0.2),
                curve: Easing.standardDecelerate,
              ),
          const Gap(16),
          SizedBox(
                width: double.infinity,
                child: Card.filled(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      artefactInfo.legendaryFact,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
              )
              .animate(delay: const Duration(milliseconds: 600))
              .fadeIn()
              .slide(
                begin: const Offset(0, 0.2),
                curve: Easing.standardDecelerate,
              ),
          const Gap(16),
          Text(
                artefactInfo.history,
                style: Theme.of(context).textTheme.bodyLarge,
              )
              .animate(delay: const Duration(milliseconds: 700))
              .fadeIn()
              .slide(
                begin: const Offset(0, 0.2),
                curve: Easing.standardDecelerate,
              ),
          const Gap(100),
        ],
      ),
    );
  }
}

class _ArtifactSummaryRow extends StatelessWidget {
  const _ArtifactSummaryRow({required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            title.toUpperCase(),
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            value,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
