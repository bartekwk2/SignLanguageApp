import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inz/models/classification/classifier_result.dart';
import '../../bloc/classifier_bloc/classifier_bloc.dart';

class ClassifierScreen extends StatefulWidget {
  @override
  _ClassifierScreenState createState() => _ClassifierScreenState();
}

class _ClassifierScreenState extends State<ClassifierScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: BlocBuilder<ClassifierBloc, ClassifierState>(
          builder: (context, classifierBloc) {
        if (classifierBloc.cameraController != null) {
          ClassifierResult classificationResult =
              classifierBloc.classifierResult;
          return Stack(
            children: [
              CameraPreview(
                  classifierBloc.cameraController as CameraController),
              classificationResult != null
                  ? Positioned(
                      left: 0,
                      right: 0,
                      top: 40,
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text(classificationResult.label),
                        ),
                      ),
                    )
                  : SizedBox()
            ],
          );
        } else {
          return Container();
        }
      }),
    );
  }
}
