import 'package:flutter/material.dart';

class ReplicateFiltersWidget extends StatefulWidget {
  final List<String> cities;
  final String countryLabel;

  const ReplicateFiltersWidget({
    super.key,
    this.cities = const ['Cairo', 'Giza', 'Aswan', 'Asyut', 'Alexandria', 'Suez'],
    this.countryLabel = 'Egypt',
  });

  @override
  State<ReplicateFiltersWidget> createState() => _ReplicateFiltersWidgetState();
}

class _ReplicateFiltersWidgetState extends State<ReplicateFiltersWidget> {
  bool _showCities = false;
  String? _selectedCity;

  @override
  void initState() {
    super.initState();
    _selectedCity = widget.cities.isNotEmpty ? widget.cities.first : null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => _onSortTap(),
                child: Container(
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                      colors: [Color(0xFF11CC9A), Color(0xFF305189)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Sort', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                      
                      Icon(Icons.arrow_drop_down, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GestureDetector(
                    onTap: () => setState(() => _showCities = !_showCities),
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: const Color(0xFFE0E6EE)),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(widget.countryLabel, style: const TextStyle(color: Colors.black87)),
                          const Icon(Icons.arrow_drop_down, color: Colors.black54),
                        ],
                      ),
                    ),
                  ),

                  if (_showCities)
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xFFE6EDF3)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.06),
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      height: 150,
                      child: Scrollbar(
                        thumbVisibility: true,
                        child: ListView.separated(
                          itemCount: widget.cities.length,
                          separatorBuilder: (_, __) => const Divider(height: 1),
                          itemBuilder: (context, index) {
                            final city = widget.cities[index];
                            return InkWell(
                              onTap: () => setState(() {
                                _selectedCity = city;
                                _showCities = false;
                              }),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(city, style: const TextStyle(fontSize: 14)),
                                    if (_selectedCity == city)
                                      const Icon(Icons.check, size: 18, color: Colors.blue)
                                    else
                                      Container(width: 8, height: 8),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),

        // Example stadium card
        
      ],
    );
  }

  void _onSortTap() {
    // stub for sorting action; replace with project-specific logic
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Sort tapped')));
  }
}


