import 'dart:io';
import 'dart:ui';

import 'package:animations/animations.dart';
import 'package:artefact/artefact_details/artefact_details.dart';
import 'package:artefact/generated/assets.gen.dart';
import 'package:artefact/l10n/l10n.dart';
import 'package:artefact/overview/model/artefact.dart';
import 'package:artefact_ui/artefact_ui.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tilt/flutter_tilt.dart';
import 'package:gap/gap.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({super.key});

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  final CarouselController controller = CarouselController();

  final allArtefacts = demoArtefacts.shuffled();
  final featuredArtefacts =
      featuredIds
          .map(
            (id) => demoArtefacts.firstWhere((artefact) => artefact.id == id),
          )
          .toList();

  @override
  Widget build(BuildContext context) {
    final layout = ArtefactLayout.of(context);
    final height = MediaQuery.sizeOf(context).height;
    final l10n = context.l10n;

    return LayoutBuilder(
      builder: (context, _) {
        final isSmall = layout == ArtefactLayoutData.small;

        return CustomScrollView(
          slivers: [
            SliverGap(isSmall ? 36 : 72),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: isSmall ? 20 : 150),
                child: const _Logo(),
              ),
            ),
            SliverGap(isSmall ? 36 : 100),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: isSmall ? 20 : 150),
              sliver: SliverToBoxAdapter(
                child: Text(
                  l10n.featuredTitle,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
            const SliverGap(20),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: isSmall ? 20 : 150),
              sliver: SliverToBoxAdapter(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: height / (isSmall ? 2.5 : 2),
                  ),
                  child: ScrollConfiguration(
                    behavior: _CustomScrollBehavior(),
                    child: CarouselView.weighted(
                      controller: controller,
                      itemSnapping: true,
                      enableSplash: false,
                      backgroundColor: Colors.transparent,
                      flexWeights:
                          isSmall ? const [4, 3, 2] : const [4, 3, 2, 1],
                      children:
                          featuredArtefacts.map((artefactInfo) {
                            return RepaintBoundary(
                              child: OpenContainer(
                                useRootNavigator: true,
                                openColor: Colors.transparent,
                                closedColor: Colors.transparent,
                                closedElevation: 0,
                                openElevation: 0,
                                closedShape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                openShape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                closedBuilder:
                                    (_, __) => ArtefactCard(
                                      posterUrl: artefactInfo.posterUrl,
                                    ),
                                openBuilder:
                                    (_, __) => ArtefactDetailsPage(
                                      artefactInfo: artefactInfo,
                                    ),
                              ),
                            );
                          }).toList(),
                    ),
                  ),
                ),
              ),
            ),
            SliverGap(isSmall ? 36 : 72),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: isSmall ? 20 : 150),
              sliver: SliverToBoxAdapter(
                child: Text(
                  l10n.browseAllTitle,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
            const SliverGap(20),
            SliverPadding(
              padding:
                  isSmall
                      ? const EdgeInsets.only(top: 20)
                      : const EdgeInsets.only(
                        left: 150,
                        right: 150,
                        bottom: 150,
                      ),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: switch (layout) {
                    ArtefactLayoutData.small => 1,
                    ArtefactLayoutData.medium => 2,
                    ArtefactLayoutData.large => 3,
                  },
                  crossAxisSpacing: 24,
                  mainAxisSpacing: 24,
                  childAspectRatio: 1.3,
                ),
                delegate: SliverChildBuilderDelegate((context, index) {
                  final artefactInfo = allArtefacts[index];
                  return OpenContainer(
                    useRootNavigator: true,
                    openColor: Colors.transparent,
                    closedColor: Colors.transparent,
                    closedElevation: 0,
                    openElevation: 0,
                    closedShape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    openShape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    closedBuilder:
                        (_, __) =>
                            ArtefactCard(posterUrl: artefactInfo.posterUrl),
                    openBuilder:
                        (_, __) =>
                            ArtefactDetailsPage(artefactInfo: artefactInfo),
                  );
                  // ignore: require_trailing_commas
                }, childCount: allArtefacts.length),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Assets.icons.logo.svg(
          width: 48,
          height: 48,
          colorFilter: ColorFilter.mode(
            Theme.of(context).colorScheme.onSurface,
            BlendMode.srcIn,
          ),
        ),
        Expanded(
          child: Text(
            context.l10n.appName,
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
              fontWeight: FontWeight.w700,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}

class ArtefactCard extends StatelessWidget {
  const ArtefactCard({required this.posterUrl, super.key});

  final String posterUrl;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Tilt(
        disable: _isTestEnv,
        tiltConfig: const TiltConfig(enableGestureTouch: false),
        shadowConfig: const ShadowConfig(disable: true),
        borderRadius: BorderRadius.circular(20),
        child: Card.filled(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Theme.of(
            context,
          ).colorScheme.primaryContainer.withValues(alpha: 0.4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: OverflowBox(
              maxWidth: width * 7 / 8,
              minWidth: width * 7 / 8,
              child: CachedNetworkImage(imageUrl: posterUrl),
            ),
          ),
        ),
      ),
    );
  }
}

class _CustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    if (!kIsWeb) PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.trackpad,
  };
}

bool get _isTestEnv =>
    kIsWeb == false && Platform.environment.containsKey('FLUTTER_TEST');
