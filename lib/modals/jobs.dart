import 'dart:ui';

class Jobs {
  String title;
  String company;
  String location;
  String pay;

  Jobs (this.title, this.company, this.location, this.pay);

  static List<Jobs> generateJobs() {
    return [
      Jobs('UX Designer', 'Volv Media', 'Anywhere', '75,000'),
      Jobs('Product Designer', 'Ethereum Foundation', 'Anywhere', '195,000'),
      Jobs('Brand Designer', 'Dribble', 'Anywhere', '125,000'),
    ];
  }
  static List<Jobs> generateRecentJobs() {
    return [
      Jobs('Sr. Product Designer', 'Uniswap', 'Anywhere', '195,000'),
      Jobs('Digital Designer (NFT)', 'Crypto.com', 'Hong Kong', '195,000'),
      Jobs('Brand Designer', 'Dribbble', 'Anywhere', '195,000'),
    ];
  }
}