class Article {
  int id;
  String title;
  String url;
  String imageUrl;
  String newsSite;
  String summary;
  String publishedAt;
  String updatedAt;
  bool isFavourite;

  Article({
    required this.id,
    required this.title,
    required this.url,
    required this.imageUrl,
    required this.newsSite,
    required this.summary,
    required this.publishedAt,
    required this.updatedAt,
    required this.isFavourite,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      url: json['url'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      newsSite: json['newsSite'] ?? '',
      summary: json['summary'] ?? '',
      publishedAt: json['publishedAt'] ?? '',
      updatedAt: json['updatedAt'] ?? '',
      isFavourite: false,
    );
  }
}

var data = [
  {
    "id": 17058,
    "title": "DIU selects startups for U.S. military weather modeling project",
    "url": "https://spacenews.com/diu-selects-startups-for-u-s-military-weather-modeling-project/",
    "imageUrl": "https://spacenews.com/wp-content/uploads/2022/10/Screenshot-2022-10-26-at-3.15.55-PM.png",
    "newsSite": "SpaceNews",
    "summary": "The Defense Innovation Unit and the U.S. Air Force announced Oct. 26 they selected five companies to help build weather models using data from satellites, aerial and terrestrial sensors.",
    "publishedAt": "2022-10-26T20:49:13.000Z",
    "updatedAt": "2022-10-26T20:49:13.917Z",
    "featured": false,
    "launches": [],
    "events": []
  },
  {
    "id": 17057,
    "title": "New Starlink dish kit enables services ‘on any moving land object’",
    "url": "https://spacenews.com/new-starlink-dish-kit-enables-services-on-any-moving-land-object/",
    "imageUrl": "https://spacenews.com/wp-content/uploads/2022/10/in-motion.jpeg",
    "newsSite": "SpaceNews",
    "summary": "SpaceX started taking pre-orders Oct. 25 for a flat panel antenna that enables land vehicles to use its Starlink broadband service while in motion.",
    "publishedAt": "2022-10-26T19:19:14.000Z",
    "updatedAt": "2022-10-26T19:19:14.450Z",
    "featured": false,
    "launches": [],
    "events": []
  },
  {
    "id": 17056,
    "title": "Quantum Space announces first cislunar mission",
    "url": "https://spacenews.com/quantum-space-announces-first-cislunar-mission/",
    "imageUrl": "https://spacenews.com/wp-content/uploads/2022/10/qs-1.jpg",
    "newsSite": "SpaceNews",
    "summary": "Quantum Space, a company founded earlier this year to develop spacecraft platforms in cislunar space, announced plans Oct. 26 for its first smallsat pathfinder mission that will collect space situational awareness data.",
    "publishedAt": "2022-10-26T15:09:13.000Z",
    "updatedAt": "2022-10-26T15:09:13.746Z",
    "featured": false,
    "launches": [],
    "events": []
  },
  {
    "id": 17055,
    "title": "SpaceX becomes NASA’s second-largest vendor, surpassing Boeing",
    "url": "https://arstechnica.com/science/2022/10/spacex-becomes-nasas-second-largest-vendor-surpassing-boeing/",
    "imageUrl": "https://cdn.arstechnica.net/wp-content/uploads/2022/10/1-Crew-3-Nov-9-2021-6388.jpg",
    "newsSite": "Arstechnica",
    "summary": "NASA obligated 2.04 billion to SpaceX in fiscal year 2022.",
    "publishedAt": "2022-10-26T14:10:12.000Z",
    "updatedAt": "2022-10-26T14:19:22.852Z",
    "featured": false,
    "launches": [],
    "events": []
  },
  {
    "id": 17054,
    "title": "ISS partners weigh options for using commercial space stations",
    "url": "https://spacenews.com/iss-partners-weigh-options-for-using-commercial-space-stations/",
    "imageUrl": "https://spacenews.com/wp-content/uploads/2021/11/iss-nov2021.jpg",
    "newsSite": "SpaceNews",
    "summary": "Partner agencies on the International Space Station program say they are in discussions about how they will use, and pay for, commercial space stations that will replace it.",
    "publishedAt": "2022-10-26T11:39:41.000Z",
    "updatedAt": "2022-10-26T11:39:41.709Z",
    "featured": false,
    "launches": [],
    "events": []
  },
  {
    "id": 17060,
    "title": "Boeing’s Starliner charges approach 900 million",
    "url": "https://spacenews.com/boeings-starliner-charges-approach-900-million/",
    "imageUrl": "https://spacenews.com/wp-content/uploads/2022/09/iss067e067090-scaled.jpg",
    "newsSite": "SpaceNews",
    "summary": "Boeing announced Oct. 26 it will take yet another charge against earnings because of delays in the CST-100 Starliner commercial crew program, bringing the total losses recorded by the company to date on the program to nearly 900 million.",
    "publishedAt": "2022-10-26T01:19:13.000Z",
    "updatedAt": "2022-10-27T01:19:13.852Z",
    "featured": false,
    "launches": [],
    "events": []
  },
  {
    "id": 17048,
    "title": "Space Force to seek budget boost beyond 2023, China’s capabilities are ‘close to ours’",
    "url": "https://spacenews.com/space-force-to-seek-budget-boost-beyond-2023-chinas-capabilities-are-close-to-ours/",
    "imageUrl": "https://spacenews.com/wp-content/uploads/2022/10/Screen-Shot-2022-10-25-at-2.52.01-PM-e1666734305925.png",
    "newsSite": "SpaceNews",
    "summary": "Gen. David \"DT\" Thompson, U.S. vice chief of space operations, said the Space Force is likely to see continued funding increases to counter China’s rapid advances in its space program.",
    "publishedAt": "2022-10-25T21:49:13.000Z",
    "updatedAt": "2022-10-25T21:49:13.543Z",
    "featured": false,
    "launches": [],
    "events": []
  },
  {
    "id": 17047,
    "title": "Newly acquired NanoAvionics plots major smallsat expansion",
    "url": "https://spacenews.com/newly-acquired-nanoavionics-plots-major-smallsat-expansion/",
    "imageUrl": "https://spacenews.com/wp-content/uploads/2021/03/Vytenis-J.-Buzas-NanoAvionics-CEO-2048x1365-1.jpg",
    "newsSite": "SpaceNews",
    "summary": "NanoAvionics expects to be able to churn out several hundred satellites annually in two years following a multimillion-dollar investment plan from its new Norwegian owners.",
    "publishedAt": "2022-10-25T20:39:19.000Z",
    "updatedAt": "2022-10-25T20:39:19.938Z",
    "featured": false,
    "launches": [],
    "events": []
  },
  {
    "id": 17046,
    "title": "NASA Invites Media to SpaceX’s 26th Resupply Launch to Space Station",
    "url": "http://www.nasa.gov/press-release/nasa-invites-media-to-spacex-s-26th-resupply-launch-to-space-station",
    "imageUrl": "https://www.nasa.gov/sites/default/files/thumbnails/image/space_x_resupply_for_advisory_oct_25.jpg?itok=gPFwlX-R",
    "newsSite": "NASA",
    "summary": "Media accreditation is open for SpaceX’s 26th commercial resupply mission for NASA to the International Space Station. Liftoff of the SpaceX Dragon cargo spacecraft on a Falcon 9 rocket is targeted no earlier than Friday, Nov. 18, from Launch Complex 39A at NASA’s Kennedy Space Center in Florida.",
    "publishedAt": "2022-10-25T19:39:00.000Z",
    "updatedAt": "2022-10-25T19:43:00.782Z",
    "featured": false,
    "launches": [
      {
        "id": "8b360e14-f90d-4a34-9a81-cb5a5ac364c1",
        "provider": "Launch Library 2"
      }
    ],
    "events": []
  },
  {
    "id": 17045,
    "title": "Starlink’s survivability in war a good sign for DoD’s future constellation",
    "url": "https://spacenews.com/starlinks-survivability-in-war-a-good-sign-for-dods-future-constellation/",
    "imageUrl": "https://spacenews.com/wp-content/uploads/2022/10/Ff7YuuLXEAIVSEp.jpeg",
    "newsSite": "SpaceNews",
    "summary": "SDA Director Derek Tournear said Starlink's performance so far speaks to the power of a proliferated constellation to deter attacks and provide resilience",
    "publishedAt": "2022-10-25T18:49:13.000Z",
    "updatedAt": "2022-10-25T18:49:13.080Z",
    "featured": false,
    "launches": [],
    "events": []
  }
];
