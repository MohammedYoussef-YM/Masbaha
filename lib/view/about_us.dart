import 'package:flutter/material.dart';
import 'main_drawer.dart';

class MainAboutScreen extends StatelessWidget {
  final  _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      key: _globalKey,
      appBar: AppBar(
        title: Text('معلومات عنا', style: TextStyle(color: Color(0xff000345),fontSize: 16)),
        centerTitle: true, backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.menu),color: Colors.black,
          onPressed: () {
            _globalKey.currentState.openDrawer();
          },),),
      drawer: MainDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 10,),

                Text('مكتب وائل و يوسف', style: TextStyle(color: Color(0xff000345),fontSize: 18),),

                SizedBox(height: 30,),

                Text("من نحن \n  مؤسسة يمنية  اتخذت من مجال بيع الدهانات بانواعها (الديكوري - الصناعي- البحري) وتنفيذ  اعمال الطلاء بكوادر محلية وسيلتها لوضع بصمة جودة وجمال وحماية في المشاريع السكنية والطبية والصناعية كمساهمة فعالة في التنمية الوطنية في الجمهورية اليمنية.\n"
               " نحن نسعى الى تعزيز علاقتنا مع عملائنا من خلال اتقان العمل وجودة المنتج بهدف تحقيق اعلى مستويات عملية التنفيذ وفق خطوات مدروسة و بحسب المواصفات العالمية وتوصيات الشركات المنتجة. وباستخدام تقنية ومعدات حديثة"
                    "، وباستخدام تقنية ومعدات حديثة."
               " تواصل معنا:\n"
               " ☆ الحصبة - شارع القاهره.\n"
               " ☆ الدائري - شارع الزراعة.\n",
                  style: TextStyle(color: Color(0xff000345),fontSize: 14),),

                SizedBox(height: 50,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
