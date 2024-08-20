import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../../../utils/commons/widgets/home-layout/vehicle_carousel.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            _buildBackgroundImage(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildServiceSelector(),
                        const SizedBox(height: 16),
                        _buildServiceSection(),
                      ],
                    ),
                  ),
                ),
                VehicleCarousel(),
                const SizedBox(height: 32),
                _buildPromotionBanner(context),
                const SizedBox(height: 16),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _buildPromotionSection(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Container(
      height: 250,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/home/pexels-photoscom-933981.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return const Padding(
      padding: EdgeInsets.only(top: 40, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Chào mừng Pi!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.white, size: 16),
                      SizedBox(width: 4),
                      Text(
                        'Vị trí hiện tại',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Quận 9, HCM',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildServiceSelector() {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      margin: const EdgeInsets.only(top: 100),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Số dư 0 đ',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.orange.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const SizedBox(width: 8),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: 'Từ',
                      labelStyle: TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    dropdownColor: Colors.white,
                    icon:
                        const Icon(Icons.arrow_drop_down, color: Colors.black),
                    items: const [
                      DropdownMenuItem(
                          value: 'Đại học FPT',
                          child: Row(
                            children: [
                              Icon(Icons.add_location_outlined,
                                  color: Colors.orange, size: 20),
                              SizedBox(width: 8),
                              Text(
                                'Đại học FPT',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ],
                          )),
                      DropdownMenuItem(
                          value: 'Nhà văn hóa',
                          child: Row(
                            children: [
                              Icon(Icons.add_location_outlined,
                                  color: Colors.orange, size: 20),
                              SizedBox(width: 8),
                              Text(
                                'Nhà văn hóa',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          )),
                    ],
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const SizedBox(width: 8),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: 'Đến',
                      labelStyle: TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    dropdownColor: Colors.white,
                    icon:
                        const Icon(Icons.arrow_drop_down, color: Colors.black),
                    items: const [
                      DropdownMenuItem(
                          value: 'Nhà văn hóa',
                          child: Row(
                            children: [
                              Icon(Icons.add_location_outlined,
                                  color: Colors.orange, size: 20),
                              SizedBox(width: 8),
                              Text(
                                'Nhà văn hóa',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          )),
                    ],
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.calendar_today,
                    color: Colors.orange, size: 20),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Ngày',
                      hintText: '2020/03/27 - 09:00',
                      labelStyle: TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Center(
                child: Text(
                  'Chọn',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            'Gói dịch vụ',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 8),
        _buildServiceOptions(),
      ],
    );
  }

  Widget _buildServiceOptions() {
    return SizedBox(
      height: 224,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildServiceOption(
            'Vận Chuyển\nBốc Vác\nĐóng Gói',
            'assets/images/home/vanchuyen1.png',
          ),
          _buildServiceOption(
            'Vận\nChuyển\nBốc Vác',
            'assets/images/home/vanchuyen2.png',
          ),
          _buildServiceOption(
            'Vận\nChuyển',
            'assets/images/home/vanchuyen3.png',
          ),
          _buildServiceOption(
            'Định Giá\nTại Nhà',
            'assets/images/home/vanchuyen4.png',
          ),
        ],
      ),
    );
  }

  Widget _buildServiceOption(String title, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 3,
            child: Container(
              width: 100,
              height: 185,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.orange,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle "Chi tiết" link tap
                      //chuyển hướng
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 4.0),
                      child: Row(
                        children: [
                          Text(
                            'Chi tiết',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.end,
                          ),
                          Icon(Icons.arrow_forward_ios_outlined,
                              color: Colors.grey, size: 12),
                          SizedBox(width: 8),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPromotionBanner(BuildContext context) {
    return Container(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 108,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFD5DDFF), Color(0xFF4B60BC)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Row(
              children: [
                const SizedBox(width: 80),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Ưu đãi 50% chỉ còn',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.0,
                          ),
                        ),
                        const Text(
                          '00 : 15 : 45',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.red,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        SizedBox(
                          height: 26,
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle button press
                              // chuyển hướng
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const Text(
                              'Nhận ưu đãi ngay',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: -10,
            child: Image.asset(
              'assets/images/home/image78.png',
              fit: BoxFit.fill,
              width: 120,
              height: 120,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPromotionSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: const [
              Text(
                'Khuyến mãi',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 4),
              Icon(
                Icons.local_fire_department,
                size: 24,
                color: Colors.orange,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        _buildPromotions(),
      ],
    );
  }

  Widget _buildPromotions() {
    return Column(
      children: [
        _buildPromotionCard('Up to 50% chỉ còn 10k'),
        const SizedBox(height: 16),
        _buildPromotionCard('Cashback up to 80%'),
      ],
    );
  }

  Widget _buildPromotionCard(String title) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const Icon(Icons.local_offer, size: 40, color: Colors.orange),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Xem chi tiết'),
            ),
          ],
        ),
      ),
    );
  }
}
