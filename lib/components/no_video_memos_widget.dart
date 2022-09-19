import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NoVideoMemosWidget extends StatefulWidget {
  const NoVideoMemosWidget({Key? key}) : super(key: key);

  @override
  _NoVideoMemosWidgetState createState() => _NoVideoMemosWidgetState();
}

class _NoVideoMemosWidgetState extends State<NoVideoMemosWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryColor,
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                    ),
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Text(
                              'Sorry!! \nThere are no videos yet for this paper',
                              textAlign: TextAlign.center,
                              style:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Ubuntu',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 15,
                                      ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: SvgPicture.asset(
              'assets/images/undraw_waiting__for_you_ldha.svg',
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.8,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
