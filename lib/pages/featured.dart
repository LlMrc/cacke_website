import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cacke_website/widgets/footer.dart';
import 'package:cacke_website/widgets/navbar.dart';
import 'package:flutter/material.dart';

class Featured extends StatefulWidget {
  const Featured({super.key});

  @override
  State<Featured> createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
   handleTapped(int value){
         setState(() => currentStep = value );   
  }

  void continuStep() {
    
      if(currentStep < 9){
        setState(() => currentStep = currentStep + 1);

      }
        

  
  }
void handleCancel(){
  if(currentStep > 0){
        setState(() => currentStep = currentStep - 1);
  }
}
  int currentStep = 0;
 
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
 
  Colors.black,
  Colors.blue,
  Colors.red,
];

    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          const NavBar(),
          const SizedBox(height: 24),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Wrap(
              spacing: 30,
              children: [
                Image.network(
                    'https://images.pexels.com/photos/4868635/pexels-photo-4868635.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    fit: BoxFit.cover,
                    width: 300,
                    height: 500),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Column(
                    children: [
                      AnimatedTextKit(
                        
                        animatedTexts: [
ColorizeAnimatedText('Nous offrons une grande variété de desserts délicieux. Voici quelques exemples courants de types de desserts que vous pourriez trouver dans notre pâtisserie :', textStyle: const TextStyle(fontSize: 24, height: 2), colors: colorizeColors,),

                      ],
                    ),
                      SizedBox(
                        width: 500,
                        child: Stepper(
                          onStepContinue: continuStep,
                          onStepCancel:  handleCancel,
                          onStepTapped: handleTapped,
                          currentStep: currentStep,
                          steps: [
                            Step(
                                title: const Text('Gâteaux', style: TextStyle(fontSize: 24),),
                                content: stepperContent(
                                    'Des gâteaux moelleux et savoureux, tels que des gâteaux au chocolat, des gâteaux aux fruits, des gâteaux à la crème ou des gâteaux à étages élaborés pour les occasions spéciales.')),
                            Step(
                                title: const Text('Tartes', style: TextStyle(fontSize: 24)),
                                content: stepperContent(
                                    'Des tartes sucrées à base de fruits frais tels que les tartes aux pommes, les tartes aux cerises, les tartes aux fraises, ainsi que des tartes à la crème comme la tarte au citron meringuée ou la tarte aux noix de pécan.')),
                            Step(
                                title: const Text('Éclairs et choux', style: TextStyle(fontSize: 24)),
                                content: stepperContent(
                                    'Des pâtisseries légères et aérées remplies de crème pâtissière, comme les éclairs au chocolat, les religieuses, les choux à la crème et les profiteroles.')),
                            Step(
                                title: const Text('Macarons', style: TextStyle(fontSize: 24)),
                                content: stepperContent(
                                    ' Des petites meringues légères et colorées, garnies de ganache, de crème ou de confiture, disponibles dans une variété de saveurs et de couleurs attrayantes.')),
                            Step(
                                title: const Text('Tartelettes', style: TextStyle(fontSize: 24)),
                                content: stepperContent(
                                    'De délicieuses petites tartelettes individuelles, avec des garnitures variées telles que les fruits frais, les crèmes aux saveurs différentes (citron, chocolat, café, etc.) ou les ganaches.')),
                            Step(
                                title: const Text('Cookies et biscuits', style: TextStyle(fontSize: 24)),
                                content: stepperContent(
                                    'Des biscuits croustillants ou moelleux, tels que les cookies au chocolat, les sablés aux amandes, les shortbreads ou les biscuits aux fruits secs')),
                            Step(
                                title: const Text('Pâtisseries feuilletées', style: TextStyle(fontSize: 24)),
                                content: stepperContent(
                                    ' Des viennoiseries légères et feuilletées, comme les croissants, les pains au chocolat, les pains aux amandes et les brioches.')),
                            Step(
                                title: const Text('Chocolats et bonbons', style: TextStyle(fontSize: 24)),
                                content: stepperContent(
                                    'Une sélection de chocolats artisanaux, de truffes, de pralines, de caramels et de bonbons, proposés en assortiments ou en boîtes cadeaux.')),
                            Step(
                                title: const Text('Desserts individuels ', style: TextStyle(fontSize: 24)),
                                content: stepperContent(
                                    ' Des desserts en portions individuelles, tels que les mousses au chocolat, les crèmes brûlées, les tiramisus, les cheesecakes, les verrines ou les puddings.')),
                            Step(
                                title: const Text('Glaces et sorbets ', style: TextStyle(fontSize: 24)),
                                content: stepperContent(
                                    " Des parfums de glace et de sorbet variés, préparés à partir d'ingrédients de qualité, pour rafraîchir les papilles lors des journées chaudes.")),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Footer()
        ],
      )),
    );
  }

  Widget titleStepper(String title) {
    return Container(
      color: Colors.blue,
    );
  }

  Widget stepperContent(String data) {
    return Column(
      children: [SizedBox(child: Text(data, style: const TextStyle(fontSize: 18),))],
    );
  }
}
