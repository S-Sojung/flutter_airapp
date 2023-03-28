//gab 갭, 간격

import 'package:flutter/material.dart';

const header_higet = 620.0;

const double xl_gap = 40;
const double l_gap = 30;
const double m_gap = 20;
const double s_gap = 10;
const double xs_gap = 5;

double getBodyPadding(BuildContext context){
  return MediaQuery.of(context).size.width * 0.7;
}
