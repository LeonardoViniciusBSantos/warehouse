import 'package:warehouse/models/activity.model.dart';
import 'package:warehouse/models/environment.model.dart';
import 'package:warehouse/models/item.model.dart';

List<Item> listItems = [
  Item(
    id: 1,
    name: 'Introdução à Engenharia de Software',
    description: 'Introdução aos conceitos básicos de Engenharia de Software',
    category: '1º Período',
    environmentId: 1,
  ),
  Item(
    id: 2,
    name: 'Programação I',
    description: 'Introdução à programação com linguagens como Java ou Python',
    category: '1º Período',
    environmentId: 1,
  ),
  Item(
    id: 3,
    name: 'Matemática Discreta',
    description: 'Estudo dos conceitos fundamentais de matemática discreta',
    category: '2º Período',
    environmentId: 2,
  ),
  // Adicione mais itens conforme necessário
];

List<Activity> listActivities = [
  Activity(
    id: 1,
    name: 'Exercício 1 - Introdução à Engenharia de Software',
    description: 'Resolva os exercícios 1 e 2 do capítulo 1 do livro-texto',
    dateTime: DateTime.now(),
    itemId: 1,
  ),
  Activity(
    id: 2,
    name: 'Trabalho Prático - Programação I',
    description:
        'Desenvolva um pequeno projeto utilizando os conceitos aprendidos em aula',
    dateTime: DateTime.now(),
    itemId: 2,
  ),
  Activity(
    id: 3,
    name: 'Prova - Matemática Discreta',
    description:
        'Realize a prova escrita abordando os tópicos discutidos nas aulas',
    dateTime: DateTime.now(),
    itemId: 3,
  ),
  Activity(
    id: 1,
    name: 'Exercício 1 - Introdução à Engenharia de Software',
    description: 'Resolva os exercícios 1 e 2 do capítulo 1 do livro-texto',
    dateTime: DateTime.now(),
    itemId: 1,
  ),
  Activity(
    id: 2,
    name: 'Trabalho Prático - Programação I',
    description:
        'Desenvolva um pequeno projeto utilizando os conceitos aprendidos em aula',
    dateTime: DateTime.now(),
    itemId: 2,
  ),
  Activity(
    id: 3,
    name: 'Prova - Matemática Discreta',
    description:
        'Realize a prova escrita abordando os tópicos discutidos nas aulas',
    dateTime: DateTime.now(),
    itemId: 3,
  ),
  Activity(
    id: 1,
    name: 'Exercício 1 - Introdução à Engenharia de Software',
    description: 'Resolva os exercícios 1 e 2 do capítulo 1 do livro-texto',
    dateTime: DateTime.now(),
    itemId: 1,
  ),
  Activity(
    id: 2,
    name: 'Trabalho Prático - Programação I',
    description:
        'Desenvolva um pequeno projeto utilizando os conceitos aprendidos em aula',
    dateTime: DateTime.now(),
    itemId: 2,
  ),
  Activity(
    id: 3,
    name: 'Prova - Matemática Discreta',
    description:
        'Realize a prova escrita abordando os tópicos discutidos nas aulas',
    dateTime: DateTime.now(),
    itemId: 3,
  ),
  // Adicione mais atividades conforme necessário
];

List<Environment> environments = [
  Environment(
    id: 1,
    name: 'Curso Eng. de Software',
    description: 'Anotações sobre cada aula',
  ),
  Environment(
    id: 2,
    name: 'Iniciação científica',
    description: 'Anotações para meu projeto de iniciação científica',
  ),
  Environment(
    id: 3,
    name: 'Curso de inglês',
    description: 'Aprendizado sobre aulas de inglês',
  ),
  // Adicione mais ambientes conforme necessário
];
