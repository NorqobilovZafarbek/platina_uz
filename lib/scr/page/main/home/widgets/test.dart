import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html_all/flutter_html_all.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'flutter_html Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

const htmlData = """
  "<p><strong>Дарахткушлик. Бу мавзуни очадиган бўлсак, минглаб дарахтларни йўқотганимизни, ўзимизни заҳарлаш учун қанчадан қанча дарахтлар умрига зомин бўлганимизни англаймиз.&nbsp; Йўқотганларимиз кўп, топганларимиз эса юқори ҳароратдаги иссиқ ва шу иссиқда айланиб бўлмайдиган файзсиз бинолар ўрами.</strong></p>\r\n\r\n<p>Бухоронинг кеча ва бугунги сунъий йўлдошдан олинган тасвирлари бунга яққол исбот бўла олади.</p>\r\n\r\n<p><strong>Амфитеатр</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://cp.dev.platina.uz/media/uploads/2023/08/12/01.jpg\" /><img alt=\"\" src=\"https://cp.dev.platina.uz/media/uploads/2023/08/12/01.jpg\" /><img alt=\"\" src=\"https://cp.dev.platina.uz/media/uploads/2023/08/12/01.jpg\" /><img alt=\"\" src=\"https://cp.dev.platina.uz/media/uploads/2023/08/12/01.jpg\" /><img src=\"https://cp.platina.uz/media/uploads/2023/08/12/01.jpg\" /></p>\r\n\r\n<p>Амфитеатр атрофидаги кўл 2004 йиллардан бошлаб қури(тили)шни бошла(н)ган.</p>\r\n\r\n<p><strong>&nbsp;Арк</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://cp.dev.platina.uz/media/uploads/2023/08/12/02.jpg\" /><img src=\"https://cp.platina.uz/media/uploads/2023/08/12/02.jpg\" /></p>\r\n\r\n<p>Аркнинг сўнгги йиллардаги дарахтсизланиб, файзсиз кўринишга келган ҳолати.</p>\r\n\r\n<p><strong>Сомонийлар боғи</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://cp.dev.platina.uz/media/uploads/2023/08/12/03.jpg\" /><img src=\"https://cp.platina.uz/media/uploads/2023/08/12/03.jpg\" /></p>\r\n\r\n<p>Сомонийлар боғи. Дарахтзорли боғ бетонли, аттракционли майдонга айлантирилган.</p>\r\n\r\n<p><strong>Стадион</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cp.dev.platina.uz/media/uploads/2023/08/12/04.jpg\" /></strong><img src=\"https://cp.platina.uz/media/uploads/2023/08/12/04.jpg\" /></p>\r\n\r\n<p>Бухоро стадионининг атрофи қарийб 20 йилда ана шундай аҳволга келган.</p>\r\n\r\n<p><strong>Аэропорт йўли</strong></p>\r\n\r\n<p>Аэропорт йўлидаги дарахтлар кесилиб, ўрнига унда деярли 3-4 баробар кам импотент дарахтлар экилган.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cp.dev.platina.uz/media/uploads/2023/08/12/05.jpg\" /><img src=\"https://cp.platina.uz/media/uploads/2023/08/12/05.jpg\" /></p>\r\n\r\n<p><strong>Баҳорзий маҳалласи.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://cp.dev.platina.uz/media/uploads/2023/08/12/07.jpg\" /><img src=\"https://cp.platina.uz/media/uploads/2023/08/12/07.jpg\" /></p>\r\n\r\n<p><strong>Шаҳар маркази</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://cp.dev.platina.uz/media/uploads/2023/08/12/06.jpg\" /><img src=\"https://cp.platina.uz/media/uploads/2023/08/12/06.jpg\" /></p>\r\n\r\n<p><strong>Суратлар Отабек Ҳамид саҳифасидан олинди.</strong></p>\r\n\r\n<p>Ундан ташқари шаҳар марказидаги бир неча жойлар &ndash; Мир араб мадрасаси, Мағоки Аттори Масжиди жойлашган ҳудудларда ҳам жуда катта сезиларли фарқ бор.</p>\r\n\r\n<p>Шунча кесилишлардан сўнг яна яқинда автомобил йўли қуриш учун 70 мингга яқин дарахтнинг йўқ қилинишига сал қолди.</p>\r\n\r\n<p>Хулоса шуки, дарахтларни эмас, ўз умримиз ва саломатлигимизни кесмоқдамиз.</p>\r\n\r\n<p style=\"text-align:right\"><strong>Фазилат Соиб</strong></p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:124px; position:absolute; top:3016.95px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>
""";

final staticAnchorKey = GlobalKey();

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter_html Example'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_downward),
        onPressed: () {
          final anchorContext =
              AnchorKey.forId(staticAnchorKey, "bottom")?.currentContext;
          if (anchorContext != null) {
            Scrollable.ensureVisible(anchorContext);
          }
        },
      ),
      body: SingleChildScrollView(
        child: Html(
          anchorKey: staticAnchorKey,
          data: htmlData,
          style: {
            "table": Style(
              backgroundColor: const Color.fromARGB(0x50, 0xee, 0xee, 0xee),
            ),
            "th": Style(
              padding: HtmlPaddings.all(6),
              backgroundColor: Colors.grey,
            ),
            "td": Style(
              padding: HtmlPaddings.all(6),
              border: const Border(bottom: BorderSide(color: Colors.grey)),
            ),
            'h5': Style(maxLines: 2, textOverflow: TextOverflow.ellipsis),
            'flutter': Style(
              display: Display.block,
              fontSize: FontSize(5, Unit.em),
            ),
            ".second-table": Style(
              backgroundColor: Colors.transparent,
            ),
            ".second-table tr td:first-child": Style(
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.end,
            ),
          },
          extensions: [
            TagWrapExtension(
                tagsToWrap: {"table"},
                builder: (child) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: child,
                  );
                }),
            // TagExtension(
            //   tagsToExtend: {"tex"},
            //   builder: (context) => Math.tex(
            //     context.innerHtml,
            //     mathStyle: MathStyle.display,
            //     textStyle: context.styledElement?.style.generateTextStyle(),
            //     onErrorFallback: (FlutterMathException e) {
            //       return Text(e.message);
            //     },
            //   ),
            // ),
            TagExtension.inline(
              tagsToExtend: {"bird"},
              child: const TextSpan(text: "🐦"),
            ),
            TagExtension(
              tagsToExtend: {"flutter"},
              builder: (context) => CssBoxWidget(
                style: context.styledElement!.style,
                child: FlutterLogo(
                  style: context.attributes['horizontal'] != null
                      ? FlutterLogoStyle.horizontal
                      : FlutterLogoStyle.markOnly,
                  textColor: context.styledElement!.style.color!,
                  size: context.styledElement!.style.fontSize!.value,
                ),
              ),
            ),
            ImageExtension(
              handleAssetImages: false,
              handleDataImages: false,
              networkDomains: {"flutter.dev"},
              child: const FlutterLogo(size: 36),
            ),
            ImageExtension(
              handleAssetImages: false,
              handleDataImages: false,
              networkDomains: {"mydomain.com"},
              networkHeaders: {"Custom-Header": "some-value"},
            ),
            // const MathHtmlExtension(),
            // const AudioHtmlExtension(),
            // const VideoHtmlExtension(),
            // const IframeHtmlExtension(),
            // const TableHtmlExtension(),
            // const SvgHtmlExtension(),
          ],
          onLinkTap: (url, _, __) {
            debugPrint("Opening $url...");
          },
          onCssParseError: (css, messages) {
            debugPrint("css that errored: $css");
            debugPrint("error messages:");
            for (var element in messages) {
              debugPrint(element.toString());
            }
            return '';
          },
        ),
      ),
    );
  }
}