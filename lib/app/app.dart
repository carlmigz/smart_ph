import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_ph/app/routes/app_routes.dart';
import 'package:smart_ph/app/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: ScreenUtilInit(
        splitScreenMode: true,
        ensureScreenSize: true,
        designSize: ScreenUtil.defaultSize,
        child: MultiBlocProvider(
          providers: [
            // BlocProvider<CounterCubit>(create: (_) => CounterCubit()),
          ],
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: dotenv.get('APP_NAME'),
            theme: AppTheme.light(),
            routerConfig: appRoutes,
          ),
        ),
      ),
    );
  }
}
