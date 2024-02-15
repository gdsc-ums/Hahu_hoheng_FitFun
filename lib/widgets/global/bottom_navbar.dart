import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../bloc/home/home_bloc.dart';
import '../../themes/app_color.dart';
import '../../themes/app_font.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  void initState() {
    super.initState();
    final homeBloc = BlocProvider.of<HomeBloc>(context);
    homeBloc.add(HomeInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        height: 65,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: shadowColor, spreadRadius: 5, blurRadius: 10)
        ]),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            switch (state.runtimeType) {
              case HomeLoadingState:
                print("Loading..");
                return const CircularProgressIndicator();
              case HomeLoadedState:
                final loadedState = state as HomeLoadedState;
                print("Loading success");
                return Row(
                  children: List.generate(
                    loadedState.tabs.length,
                    (index) => SizedBox(
                      width: MediaQuery.sizeOf(context).width / 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(loadedState.tabs[index]["icon"],
                              height: 25),
                          const SizedBox(height: 5),
                          Text(
                            loadedState.tabs[index]["name"],
                            style: text10.copyWith(
                                color:
                                    index == 0 ? secondaryColor : Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              default:
                print("ERROR");
                return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
