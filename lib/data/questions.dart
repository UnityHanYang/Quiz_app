import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'Flutter UI의 주요 빌딩 블록은 무엇입니까',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions'
    ],
  ),
   QuizQuestion('Flutter UI는 어떻게 구축되나요?', [
    '코드에서 위젯 결합',
    '비주얼 편집기에서 위젯 결합',
    '구성 파일에서 위젯을 정의하여',
    'iOS용 XCode 및 Android용 Android Studio 사용',
  ]),
  QuizQuestion(
    'StatefulWidget의 목적은 무엇입니까?',
    [
      '데이터 변경에 따라 UI 업데이트',
      'UI 변경에 따라 데이터 업데이트',
      '데이터 변경 무시',
      '데이터에 의존하지 않는 렌더링 UI',
    ],
  ),
  QuizQuestion(
    'StatelessWidget 또는 StatefulWidget 중 어떤 위젯을 더 자주 사용해야 합니까?',
    [
      'StatelessWidget',
      'StatefulWidget',
      '둘 다 좋다',
      '둘 다 쓰면 안 좋다',
    ],
  ),
  QuizQuestion(
    'StatelessWidget에서 데이터를 변경하면 어떻게 됩니까?',
    [
      'UI가 업데이트되지 않음',
      'UI가 업데이트 됨',
      '가장 가까운 StatefulWidget이 업데이트 됨',
      '중첩된 모든 StatefulWidget이 업데이트 됨',
    ],
  ),
  QuizQuestion(
    'StatefulWidgets 내부의 데이터를 어떻게 업데이트해야 합니까?',
    [
      'setState() 호출',
      'updateData() 호출',
      'updateUI() 호출',
      'updateState() 호출',
    ],
  ),

];