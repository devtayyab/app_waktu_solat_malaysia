import 'package:geolocator/geolocator.dart';

///Taken and modified from https://api.azanpro.com/zone/zones.json#
///As suggested by Aizal Manan
import 'location_coordinate_model.dart';

class LocationCoordinate {
  static final List<LocationCoordinateData> _locationCoordinate = [
    LocationCoordinateData(
      zone: "JHR01",
      negeri: "Johor",
      lokasi: "Pulau Aur",
      lat: 2.444152,
      lng: 104.524746,
    ),
    LocationCoordinateData(
      zone: "JHR01",
      negeri: "Johor",
      lokasi: "Pemanggil",
      lat: 2.580882,
      lng: 104.326827,
    ),
    LocationCoordinateData(
      zone: "JHR02",
      negeri: "Johor",
      lokasi: "Kota Tinggi",
      lat: 1.729375,
      lng: 103.899227,
    ),
    LocationCoordinateData(
      zone: "JHR02",
      negeri: "Johor",
      lokasi: "Mersing",
      lat: 2.430917,
      lng: 103.836115,
    ),
    LocationCoordinateData(
      zone: "JHR02",
      negeri: "Johor",
      lokasi: "Johor Bahru",
      lat: 1.492659,
      lng: 103.741359,
    ),
    LocationCoordinateData(
      zone: "JHR03",
      negeri: "Johor",
      lokasi: "Kluang",
      lat: 2.030068,
      lng: 103.318464,
    ),
    LocationCoordinateData(
      zone: "JHR03",
      negeri: "Johor",
      lokasi: "Pontian",
      lat: 1.485561,
      lng: 103.387859,
    ),
    LocationCoordinateData(
      zone: "JHR04",
      negeri: "Johor",
      lokasi: "Batu Pahat",
      lat: 1.849442,
      lng: 102.928834,
    ),
    LocationCoordinateData(
      zone: "JHR04",
      negeri: "Johor",
      lokasi: "Muar",
      lat: 2.048817,
      lng: 102.571553,
    ),
    LocationCoordinateData(
      zone: "JHR04",
      negeri: "Johor",
      lokasi: "Segamat",
      lat: 2.503460,
      lng: 102.820754,
    ),
    LocationCoordinateData(
      zone: "JHR04",
      negeri: "Johor",
      lokasi: "Gemas",
      lat: 2.581593,
      lng: 102.612488,
    ),
    LocationCoordinateData(
      zone: "KDH01",
      negeri: "Kedah",
      lokasi: "Kota Setar",
      lat: 6.096953,
      lng: 100.353977,
    ),
    LocationCoordinateData(
      zone: "KDH01",
      negeri: "Kedah",
      lokasi: "Kubang Pasu",
      lat: 6.267335,
      lng: 100.425831,
    ),
    LocationCoordinateData(
      zone: "KDH01",
      negeri: "Kedah",
      lokasi: "Pokok Sena",
      lat: 6.167317,
      lng: 100.519358,
    ),
    LocationCoordinateData(
      zone: "KDH02",
      negeri: "Kedah",
      lokasi: "Pendang",
      lat: 5.993039,
      lng: 100.477339,
    ),
    LocationCoordinateData(
      zone: "KDH02",
      negeri: "Kedah",
      lokasi: "Kuala Muda",
      lat: 5.644561,
      lng: 100.489023,
    ),
    LocationCoordinateData(
      zone: "KDH02",
      negeri: "Kedah",
      lokasi: "Yan",
      lat: 5.794950,
      lng: 100.372658,
    ),
    LocationCoordinateData(
      zone: "KDH03",
      negeri: "Kedah",
      lokasi: "Padang Terap",
      lat: 6.256764,
      lng: 100.611034,
    ),
    LocationCoordinateData(
      zone: "KDH03",
      negeri: "Kedah",
      lokasi: "Sik",
      lat: 5.818345,
      lng: 100.743021,
    ),
    LocationCoordinateData(
      zone: "KDH04",
      negeri: "Kedah",
      lokasi: "Baling",
      lat: 5.675547,
      lng: 100.916814,
    ),
    LocationCoordinateData(
      zone: "KDH05",
      negeri: "Kedah",
      lokasi: "Kulim",
      lat: 5.371742,
      lng: 100.555337,
    ),
    LocationCoordinateData(
      zone: "KDH05",
      negeri: "Kedah",
      lokasi: "Bandar Bahru",
      lat: 5.131163,
      lng: 100.495534,
    ),
    LocationCoordinateData(
      zone: "KDH06",
      negeri: "Kedah",
      lokasi: "Langkawi",
      lat: 6.350000,
      lng: 99.800000,
    ),
    LocationCoordinateData(
      zone: "KDH07",
      negeri: "Kedah",
      lokasi: "Gunung Jerai",
      lat: 5.783333,
      lng: 100.433333,
    ),
    LocationCoordinateData(
      zone: "KTN01",
      negeri: "Kelantan",
      lokasi: "Kota Bahru",
      lat: 6.116786,
      lng: 102.277684,
    ),
    LocationCoordinateData(
      zone: "KTN01",
      negeri: "Kelantan",
      lokasi: "Bachok",
      lat: 6.069586,
      lng: 102.397185,
    ),
    LocationCoordinateData(
      zone: "KTN01",
      negeri: "Kelantan",
      lokasi: "Pasir Puteh",
      lat: 5.836163,
      lng: 102.407741,
    ),
    LocationCoordinateData(
      zone: "KTN01",
      negeri: "Kelantan",
      lokasi: "Tumpat",
      lat: 6.199069,
      lng: 102.169372,
    ),
    LocationCoordinateData(
      zone: "KTN01",
      negeri: "Kelantan",
      lokasi: "Pasir Mas",
      lat: 6.042412,
      lng: 102.142782,
    ),
    LocationCoordinateData(
      zone: "KTN01",
      negeri: "Kelantan",
      lokasi: "Tanah Merah",
      lat: 5.808887,
      lng: 102.147077,
    ),
    LocationCoordinateData(
      zone: "KTN01",
      negeri: "Kelantan",
      lokasi: "Machang",
      lat: 5.767933,
      lng: 102.215387,
    ),
    LocationCoordinateData(
      zone: "KTN01",
      negeri: "Kelantan",
      lokasi: "Kuala Krai",
      lat: 5.530813,
      lng: 102.201851,
    ),
    LocationCoordinateData(
      zone: "KTN01",
      negeri: "Kelantan",
      lokasi: "Mukim Chiku",
      lat: 4.916993,
      lng: 102.177656,
    ),
    LocationCoordinateData(
      zone: "KTN03",
      negeri: "Kelantan",
      lokasi: "Jeli",
      lat: 5.700699,
      lng: 101.843151,
    ),
    LocationCoordinateData(
      zone: "KTN03",
      negeri: "Kelantan",
      lokasi: "Gua Musang",
      lat: 4.884279,
      lng: 101.968178,
    ),
    LocationCoordinateData(
      zone: "KTN03",
      negeri: "Kelantan",
      lokasi: "Mukim Galas",
      lat: 4.828924,
      lng: 101.934807,
    ),
    LocationCoordinateData(
      zone: "KTN03",
      negeri: "Kelantan",
      lokasi: "Bertam",
      lat: 5.151936,
      lng: 102.043792,
    ),
    LocationCoordinateData(
      zone: "MLK01",
      negeri: "Melaka",
      lokasi: "Bandar Melaka",
      lat: 2.197138,
      lng: 102.249070,
    ),
    LocationCoordinateData(
      zone: "MLK01",
      negeri: "Melaka",
      lokasi: "Alor Gajah",
      lat: 2.382211,
      lng: 102.211561,
    ),
    LocationCoordinateData(
      zone: "MLK01",
      negeri: "Melaka",
      lokasi: "Jasin",
      lat: 2.311337,
      lng: 102.430923,
    ),
    LocationCoordinateData(
      zone: "MLK01",
      negeri: "Melaka",
      lokasi: "Masjid Tanah",
      lat: 2.352279,
      lng: 102.108926,
    ),
    LocationCoordinateData(
      zone: "MLK01",
      negeri: "Melaka",
      lokasi: "Merlimau",
      lat: 2.145214,
      lng: 102.422383,
    ),
    LocationCoordinateData(
      zone: "MLK01",
      negeri: "Melaka",
      lokasi: "Nyalas",
      lat: 2.436091,
      lng: 102.469871,
    ),
    LocationCoordinateData(
      zone: "NGS01",
      negeri: "Negeri Sembilan",
      lokasi: "Jempol",
      lat: 2.896577,
      lng: 102.405454,
    ),
    LocationCoordinateData(
      zone: "NGS01",
      negeri: "Negeri Sembilan",
      lokasi: "Tampin",
      lat: 2.472971,
      lng: 102.231194,
    ),
    LocationCoordinateData(
      zone: "NGS02",
      negeri: "Negeri Sembilan",
      lokasi: "Port Dickson",
      lat: 2.522540,
      lng: 101.796293,
    ),
    LocationCoordinateData(
      zone: "NGS02",
      negeri: "Negeri Sembilan",
      lokasi: "Seremban",
      lat: 2.725889,
      lng: 101.937824,
    ),
    LocationCoordinateData(
      zone: "NGS02",
      negeri: "Negeri Sembilan",
      lokasi: "Kuala Pilah",
      lat: 2.740474,
      lng: 102.248872,
    ),
    LocationCoordinateData(
      zone: "NGS02",
      negeri: "Negeri Sembilan",
      lokasi: "Jelebu",
      lat: 2.941072,
      lng: 102.071910,
    ),
    LocationCoordinateData(
      zone: "NGS02",
      negeri: "Negeri Sembilan",
      lokasi: "Rembau",
      lat: 2.590525,
      lng: 102.092986,
    ),
    LocationCoordinateData(
      zone: "PHG01",
      negeri: "Pahang",
      lokasi: "Pulau Tioman",
      lat: 2.790249,
      lng: 104.169846,
    ),
    LocationCoordinateData(
      zone: "PHG02",
      negeri: "Pahang",
      lokasi: "Kuantan",
      lat: 3.816667,
      lng: 103.333333,
    ),
    LocationCoordinateData(
      zone: "PHG02",
      negeri: "Pahang",
      lokasi: "Pekan",
      lat: 3.492095,
      lng: 103.389545,
    ),
    LocationCoordinateData(
      zone: "PHG02",
      negeri: "Pahang",
      lokasi: "Rompin",
      lat: 2.688626,
      lng: 102.522802,
    ),
    LocationCoordinateData(
      zone: "PHG02",
      negeri: "Pahang",
      lokasi: "Muadzam Shah",
      lat: 3.056192,
      lng: 103.085225,
    ),
    LocationCoordinateData(
      zone: "PHG03",
      negeri: "Pahang",
      lokasi: "Maran",
      lat: 3.583380,
      lng: 102.779065,
    ),
    LocationCoordinateData(
      zone: "PHG03",
      negeri: "Pahang",
      lokasi: "Chenor",
      lat: 3.493743,
      lng: 102.581850,
    ),
    LocationCoordinateData(
      zone: "PHG03",
      negeri: "Pahang",
      lokasi: "Temerloh",
      lat: 3.448649,
      lng: 102.416348,
    ),
    LocationCoordinateData(
      zone: "PHG03",
      negeri: "Pahang",
      lokasi: "Bera",
      lat: 3.270526,
      lng: 102.453864,
    ),
    LocationCoordinateData(
      zone: "PHG03",
      negeri: "Pahang",
      lokasi: "Jerantut",
      lat: 3.937395,
      lng: 102.362038,
    ),
    LocationCoordinateData(
      zone: "PHG04",
      negeri: "Pahang",
      lokasi: "Bentong",
      lat: 3.522168,
      lng: 101.910353,
    ),
    LocationCoordinateData(
      zone: "PHG04",
      negeri: "Pahang",
      lokasi: "Raub",
      lat: 3.793532,
      lng: 101.857465,
    ),
    LocationCoordinateData(
      zone: "PHG04",
      negeri: "Pahang",
      lokasi: "Kuala Lipis",
      lat: 4.184330,
      lng: 102.054232,
    ),
    LocationCoordinateData(
      zone: "PHG05",
      negeri: "Pahang",
      lokasi: "Genting Sempah",
      lat: 3.350000,
      lng: 101.783333,
    ),
    LocationCoordinateData(
      zone: "PHG05",
      negeri: "Pahang",
      lokasi: "Janda Baik",
      lat: 3.350000,
      lng: 101.883333,
    ),
    LocationCoordinateData(
      zone: "PHG05",
      negeri: "Pahang",
      lokasi: "Bukit Tinggi",
      lat: 3.400997,
      lng: 101.846822,
    ),
    LocationCoordinateData(
      zone: "PHG06",
      negeri: "Pahang",
      lokasi: "Bukit Fraser",
      lat: 3.711868,
      lng: 101.736556,
    ),
    LocationCoordinateData(
      zone: "PHG06",
      negeri: "Pahang",
      lokasi: "Genting Highlands",
      lat: 3.423978,
      lng: 101.793201,
    ),
    LocationCoordinateData(
      zone: "PHG06",
      negeri: "Pahang",
      lokasi: "Cameron Highlands",
      lat: 4.472120,
      lng: 101.380144,
    ),
    LocationCoordinateData(
      zone: "PHG03",
      negeri: "Pahang",
      lokasi: "Jengka",
      lat: 3.723779,
      lng: 102.545654,
    ),
    LocationCoordinateData(
      zone: "PRK01",
      negeri: "Perak",
      lokasi: "Tapah",
      lat: 4.197730,
      lng: 101.261529,
    ),
    LocationCoordinateData(
      zone: "PRK01",
      negeri: "Perak",
      lokasi: "Slim River",
      lat: 3.830025,
      lng: 101.404645,
    ),
    LocationCoordinateData(
      zone: "PRK01",
      negeri: "Perak",
      lokasi: "Tanjung Malim",
      lat: 3.705842,
      lng: 101.504916,
    ),
    LocationCoordinateData(
      zone: "PRK02",
      negeri: "Perak",
      lokasi: "Ipoh",
      lat: 4.597479,
      lng: 101.090106,
    ),
    LocationCoordinateData(
      zone: "PRK02",
      negeri: "Perak",
      lokasi: "Batu Gajah",
      lat: 4.472081,
      lng: 101.041240,
    ),
    LocationCoordinateData(
      zone: "PRK02",
      negeri: "Perak",
      lokasi: "Kampar",
      lat: 4.308504,
      lng: 101.153653,
    ),
    LocationCoordinateData(
      zone: "PRK02",
      negeri: "Perak",
      lokasi: "Sungai Siput",
      lat: 4.819012,
      lng: 101.073718,
    ),
    LocationCoordinateData(
      zone: "PRK02",
      negeri: "Perak",
      lokasi: "Kuala Kangsar",
      lat: 4.773595,
      lng: 100.942045,
    ),
    LocationCoordinateData(
      zone: "PRK03",
      negeri: "Perak",
      lokasi: "Pengkalan Hulu",
      lat: 5.706440,
      lng: 100.999837,
    ),
    LocationCoordinateData(
      zone: "PRK03",
      negeri: "Perak",
      lokasi: "Grik",
      lat: 5.428454,
      lng: 101.129703,
    ),
    LocationCoordinateData(
      zone: "PRK03",
      negeri: "Perak",
      lokasi: "Lenggong",
      lat: 5.108440,
      lng: 100.968034,
    ),
    LocationCoordinateData(
      zone: "PRK04",
      negeri: "Perak",
      lokasi: "Temengor",
      lat: 5.333186,
      lng: 101.367712,
    ),
    LocationCoordinateData(
      zone: "PRK04",
      negeri: "Perak",
      lokasi: "Belum",
      lat: 5.740126,
      lng: 101.479350,
    ),
    LocationCoordinateData(
      zone: "PRK05",
      negeri: "Perak",
      lokasi: "Teluk Intan",
      lat: 4.022424,
      lng: 101.020625,
    ),
    LocationCoordinateData(
      zone: "PRK05",
      negeri: "Perak",
      lokasi: "Bagan Datuk",
      lat: 3.991910,
      lng: 100.786148,
    ),
    LocationCoordinateData(
      zone: "PRK05",
      negeri: "Perak",
      lokasi: "Kampung Gajah",
      lat: 4.184167,
      lng: 100.938719,
    ),
    LocationCoordinateData(
      zone: "PRK05",
      negeri: "Perak",
      lokasi: "Seri Iskandar",
      lat: 4.357145,
      lng: 100.963392,
    ),
    LocationCoordinateData(
      zone: "PRK05",
      negeri: "Perak",
      lokasi: "Beruas",
      lat: 4.500804,
      lng: 100.781508,
    ),
    LocationCoordinateData(
      zone: "PRK05",
      negeri: "Perak",
      lokasi: "Parit",
      lat: 4.476689,
      lng: 100.909749,
    ),
    LocationCoordinateData(
      zone: "PRK05",
      negeri: "Perak",
      lokasi: "Lumut",
      lat: 4.236302,
      lng: 100.632220,
    ),
    LocationCoordinateData(
      zone: "PRK05",
      negeri: "Perak",
      lokasi: "Sitiawan",
      lat: 4.216825,
      lng: 100.697824,
    ),
    LocationCoordinateData(
      zone: "PRK05",
      negeri: "Perak",
      lokasi: "Pulau Pangkor",
      lat: 4.227491,
      lng: 100.557741,
    ),
    LocationCoordinateData(
      zone: "PRK06",
      negeri: "Perak",
      lokasi: "Selama",
      lat: 5.218462,
      lng: 100.693460,
    ),
    LocationCoordinateData(
      zone: "PRK06",
      negeri: "Perak",
      lokasi: "Taiping",
      lat: 4.851932,
      lng: 100.741634,
    ),
    LocationCoordinateData(
      zone: "PRK06",
      negeri: "Perak",
      lokasi: "Bagan Serai",
      lat: 5.008062,
      lng: 100.539430,
    ),
    LocationCoordinateData(
      zone: "PRK06",
      negeri: "Perak",
      lokasi: "Parit Buntar",
      lat: 5.118682,
      lng: 100.488016,
    ),
    LocationCoordinateData(
      zone: "PRK07",
      negeri: "Perak",
      lokasi: "Bukit Larut",
      lat: 4.862300,
      lng: 100.793000,
    ),
    LocationCoordinateData(
      zone: "PLS01",
      negeri: "Perlis",
      lokasi: "Kangar",
      lat: 6.440633,
      lng: 100.198371,
    ),
    LocationCoordinateData(
      zone: "PLS01",
      negeri: "Perlis",
      lokasi: "Padang Besar",
      lat: 6.662622,
      lng: 100.321665,
    ),
    LocationCoordinateData(
      zone: "PLS01",
      negeri: "Perlis",
      lokasi: "Arau",
      lat: 6.429708,
      lng: 100.269847,
    ),
    LocationCoordinateData(
      zone: "PNG01",
      negeri: "Pulau Pinang",
      lokasi: "Pulau Pinang",
      lat: 5.414168,
      lng: 100.328759,
    ),
    LocationCoordinateData(
      zone: "SBH01",
      negeri: "Sabah",
      lokasi: "Sandakan Timur",
      lat: 5.839444,
      lng: 118.117173,
    ),
    LocationCoordinateData(
      zone: "SBH01",
      negeri: "Sabah",
      lokasi: "Bukit Garam",
      lat: 5.500122,
      lng: 117.837606,
    ),
    LocationCoordinateData(
      zone: "SBH01",
      negeri: "Sabah",
      lokasi: "Semawang",
      lat: 5.916667,
      lng: 117.766666,
    ),
    LocationCoordinateData(
      zone: "SBH01",
      negeri: "Sabah",
      lokasi: "Temanggong",
      lat: 4.910632,
      lng: 114.934834,
    ),
    LocationCoordinateData(
      zone: "SBH01",
      negeri: "Sabah",
      lokasi: "Tambisan",
      lat: 5.450148,
      lng: 119.109986,
    ),
    LocationCoordinateData(
      zone: "SBH02",
      negeri: "Sabah",
      lokasi: "Pinangah",
      lat: 4.990731,
      lng: 116.832411,
    ),
    LocationCoordinateData(
      zone: "SBH02",
      negeri: "Sabah",
      lokasi: "Terusan",
      lat: 6.426081,
      lng: 117.687599,
    ),
    LocationCoordinateData(
      zone: "SBH02",
      negeri: "Sabah",
      lokasi: "Beluran",
      lat: 5.702070,
      lng: 117.401544,
    ),
    LocationCoordinateData(
      zone: "SBH02",
      negeri: "Sabah",
      lokasi: "Kuamut",
      lat: 5.015856,
      lng: 117.353107,
    ),
    LocationCoordinateData(
      zone: "SBH02",
      negeri: "Sabah",
      lokasi: "Telupid",
      lat: 5.627233,
      lng: 117.127534,
    ),
    LocationCoordinateData(
      zone: "SBH03",
      negeri: "Sabah",
      lokasi: "Lahad Datu",
      lat: 5.024206,
      lng: 118.330746,
    ),
    LocationCoordinateData(
      zone: "SBH03",
      negeri: "Sabah",
      lokasi: "Kunak",
      lat: 4.686116,
      lng: 118.251146,
    ),
    LocationCoordinateData(
      zone: "SBH03",
      negeri: "Sabah",
      lokasi: "Silabukan",
      lat: 5.136667,
      lng: 118.614167,
    ),
    LocationCoordinateData(
      zone: "SBH03",
      negeri: "Sabah",
      lokasi: "Tungku",
      lat: 4.931209,
      lng: 114.911622,
    ),
    LocationCoordinateData(
      zone: "SBH03",
      negeri: "Sabah",
      lokasi: "Sahabat",
      lat: 5.078867,
      lng: 119.070775,
    ),
    LocationCoordinateData(
      zone: "SBH03",
      negeri: "Sabah",
      lokasi: "Semporna",
      lat: 4.479391,
      lng: 118.611545,
    ),
    LocationCoordinateData(
      zone: "SBH04",
      negeri: "Sabah",
      lokasi: "Bandar Tawau",
      lat: 4.244651,
      lng: 117.891186,
    ),
    LocationCoordinateData(
      zone: "SBH04",
      negeri: "Sabah",
      lokasi: "Balong",
      lat: 4.398421,
      lng: 118.058604,
    ),
    LocationCoordinateData(
      zone: "SBH04",
      negeri: "Sabah",
      lokasi: "Merotai",
      lat: 4.356929,
      lng: 117.827169,
    ),
    LocationCoordinateData(
      zone: "SBH04",
      negeri: "Sabah",
      lokasi: "Kalabakan",
      lat: 4.411679,
      lng: 117.492699,
    ),
    LocationCoordinateData(
      zone: "SBH05",
      negeri: "Sabah",
      lokasi: "Kudat",
      lat: 6.886840,
      lng: 116.825311,
    ),
    LocationCoordinateData(
      zone: "SBH05",
      negeri: "Sabah",
      lokasi: "Kota Marudu",
      lat: 6.465705,
      lng: 116.726409,
    ),
    LocationCoordinateData(
      zone: "SBH05",
      negeri: "Sabah",
      lokasi: "Pitas",
      lat: 6.722237,
      lng: 117.055273,
    ),
    LocationCoordinateData(
      zone: "SBH05",
      negeri: "Sabah",
      lokasi: "Pulau Banggi",
      lat: 7.267260,
      lng: 117.150005,
    ),
    LocationCoordinateData(
      zone: "SBH06",
      negeri: "Sabah",
      lokasi: "Gunung Kinabalu",
      lat: 6.074544,
      lng: 116.562720,
    ),
    LocationCoordinateData(
      zone: "SBH07",
      negeri: "Sabah",
      lokasi: "Papar",
      lat: 5.734628,
      lng: 115.931851,
    ),
    LocationCoordinateData(
      zone: "SBH07",
      negeri: "Sabah",
      lokasi: "Ranau",
      lat: 5.953561,
      lng: 116.663950,
    ),
    LocationCoordinateData(
      zone: "SBH07",
      negeri: "Sabah",
      lokasi: "Kota Belud",
      lat: 6.353248,
      lng: 116.427877,
    ),
    LocationCoordinateData(
      zone: "SBH07",
      negeri: "Sabah",
      lokasi: "Tuaran",
      lat: 6.176269,
      lng: 116.232790,
    ),
    LocationCoordinateData(
      zone: "SBH07",
      negeri: "Sabah",
      lokasi: "Penampang",
      lat: 5.914199,
      lng: 116.107663,
    ),
    LocationCoordinateData(
      zone: "SBH07",
      negeri: "Sabah",
      lokasi: "Kota Kinabalu",
      lat: 5.980408,
      lng: 116.073457,
    ),
    LocationCoordinateData(
      zone: "SBH08",
      negeri: "Sabah",
      lokasi: "Pensiangan",
      lat: 4.550000,
      lng: 116.316667,
    ),
    LocationCoordinateData(
      zone: "SBH08",
      negeri: "Sabah",
      lokasi: "Keningau",
      lat: 5.337404,
      lng: 116.156680,
    ),
    LocationCoordinateData(
      zone: "SBH08",
      negeri: "Sabah",
      lokasi: "Tambunan",
      lat: 5.721291,
      lng: 116.410779,
    ),
    LocationCoordinateData(
      zone: "SBH08",
      negeri: "Sabah",
      lokasi: "Nabawan",
      lat: 5.122208,
      lng: 116.432583,
    ),
    LocationCoordinateData(
      zone: "SBH09",
      negeri: "Sabah",
      lokasi: "Sipitang",
      lat: 5.079190,
      lng: 115.550825,
    ),
    LocationCoordinateData(
      zone: "SBH09",
      negeri: "Sabah",
      lokasi: "Membakut",
      lat: 5.527729,
      lng: 115.695961,
    ),
    LocationCoordinateData(
      zone: "SBH09",
      negeri: "Sabah",
      lokasi: "Beaufort",
      lat: 5.345118,
      lng: 115.745112,
    ),
    LocationCoordinateData(
      zone: "SBH09",
      negeri: "Sabah",
      lokasi: "Kuala Penyu",
      lat: 5.571717,
      lng: 115.597146,
    ),
    LocationCoordinateData(
      zone: "SBH09",
      negeri: "Sabah",
      lokasi: "Weston",
      lat: 5.216881,
      lng: 115.598801,
    ),
    LocationCoordinateData(
      zone: "SBH09",
      negeri: "Sabah",
      lokasi: "Tenom",
      lat: 5.130495,
      lng: 115.945455,
    ),
    LocationCoordinateData(
      zone: "SBH09",
      negeri: "Sabah",
      lokasi: "Long Pa Sia",
      lat: 5.978840,
      lng: 116.075320,
    ),
    LocationCoordinateData(
      zone: "SBH01",
      negeri: "Sabah",
      lokasi: "Sukau",
      lat: 5.551318,
      lng: 118.302786,
    ),
    LocationCoordinateData(
      zone: "SBH02",
      negeri: "Sabah",
      lokasi: "Sandakan Barat",
      lat: 5.814070,
      lng: 117.732406,
    ),
    LocationCoordinateData(
      zone: "SBH03",
      negeri: "Sabah",
      lokasi: "Tawau Timur",
      lat: 4.451914,
      lng: 118.169232,
    ),
    LocationCoordinateData(
      zone: "SBH04",
      negeri: "Sabah",
      lokasi: "Tawau Barat",
      lat: 4.487002,
      lng: 117.307201,
    ),
    LocationCoordinateData(
      zone: "SBH07",
      negeri: "Sabah",
      lokasi: "Putatan",
      lat: 5.876932,
      lng: 116.058926,
    ),
    LocationCoordinateData(
      zone: "SBH07",
      negeri: "Sabah",
      lokasi: "Pantai Barat",
      lat: 6.083333,
      lng: 116.500000,
    ),
    LocationCoordinateData(
      zone: "SWK01",
      negeri: "Sarawak",
      lokasi: "Limbang",
      lat: 4.755032,
      lng: 115.008146,
    ),
    LocationCoordinateData(
      zone: "SWK01",
      negeri: "Sarawak",
      lokasi: "Sundar",
      lat: 4.887442,
      lng: 115.226701,
    ),
    LocationCoordinateData(
      zone: "SWK01",
      negeri: "Sarawak",
      lokasi: "Terusan",
      lat: 4.283333,
      lng: 115.616666,
    ),
    LocationCoordinateData(
      zone: "SWK01",
      negeri: "Sarawak",
      lokasi: "Lawas",
      lat: 4.834950,
      lng: 115.393738,
    ),
    LocationCoordinateData(
      zone: "SWK02",
      negeri: "Sarawak",
      lokasi: "Niah",
      lat: 3.866516,
      lng: 113.730859,
    ),
    LocationCoordinateData(
      zone: "SWK02",
      negeri: "Sarawak",
      lokasi: "Belaga",
      lat: 3.200278,
      lng: 113.934714,
    ),
    LocationCoordinateData(
      zone: "SWK02",
      negeri: "Sarawak",
      lokasi: "Sibuti",
      lat: 4.045211,
      lng: 113.799896,
    ),
    LocationCoordinateData(
      zone: "SWK02",
      negeri: "Sarawak",
      lokasi: "Miri",
      lat: 4.399493,
      lng: 113.991383,
    ),
    LocationCoordinateData(
      zone: "SWK02",
      negeri: "Sarawak",
      lokasi: "Bekenu",
      lat: 4.058185,
      lng: 113.844193,
    ),
    LocationCoordinateData(
      zone: "SWK02",
      negeri: "Sarawak",
      lokasi: "Marudi",
      lat: 4.406340,
      lng: 114.262830,
    ),
    LocationCoordinateData(
      zone: "SWK03",
      negeri: "Sarawak",
      lokasi: "Song",
      lat: 2.006440,
      lng: 112.549760,
    ),
    LocationCoordinateData(
      zone: "SWK03",
      negeri: "Sarawak",
      lokasi: "Balingian",
      lat: 2.930870,
      lng: 112.539540,
    ),
    LocationCoordinateData(
      zone: "SWK03",
      negeri: "Sarawak",
      lokasi: "Sebauh",
      lat: 3.063030,
      lng: 113.477610,
    ),
    LocationCoordinateData(
      zone: "SWK03",
      negeri: "Sarawak",
      lokasi: "Bintulu",
      lat: 3.171322,
      lng: 113.041907,
    ),
    LocationCoordinateData(
      zone: "SWK03",
      negeri: "Sarawak",
      lokasi: "Tatau",
      lat: 2.878960,
      lng: 112.855621,
    ),
    LocationCoordinateData(
      zone: "SWK03",
      negeri: "Sarawak",
      lokasi: "Kapit",
      lat: 1.995115,
      lng: 112.933085,
    ),
    LocationCoordinateData(
      zone: "SWK04",
      negeri: "Sarawak",
      lokasi: "Igan",
      lat: 2.823991,
      lng: 111.710899,
    ),
    LocationCoordinateData(
      zone: "SWK04",
      negeri: "Sarawak",
      lokasi: "Kanowit",
      lat: 2.101223,
      lng: 112.153298,
    ),
    LocationCoordinateData(
      zone: "SWK04",
      negeri: "Sarawak",
      lokasi: "Sibu",
      lat: 2.287284,
      lng: 111.830535,
    ),
    LocationCoordinateData(
      zone: "SWK04",
      negeri: "Sarawak",
      lokasi: "Dalat",
      lat: 2.666667,
      lng: 112.083333,
    ),
    LocationCoordinateData(
      zone: "SWK04",
      negeri: "Sarawak",
      lokasi: "Oya",
      lat: 2.858436,
      lng: 111.875922,
    ),
    LocationCoordinateData(
      zone: "SWK05",
      negeri: "Sarawak",
      lokasi: "Belawai",
      lat: 2.220691,
      lng: 111.218333,
    ),
    LocationCoordinateData(
      zone: "SWK05",
      negeri: "Sarawak",
      lokasi: "Matu",
      lat: 2.695497,
      lng: 111.471668,
    ),
    LocationCoordinateData(
      zone: "SWK05",
      negeri: "Sarawak",
      lokasi: "Daro",
      lat: 2.527996,
      lng: 111.417057,
    ),
    LocationCoordinateData(
      zone: "SWK05",
      negeri: "Sarawak",
      lokasi: "Sarikei",
      lat: 2.131703,
      lng: 111.523728,
    ),
    LocationCoordinateData(
      zone: "SWK05",
      negeri: "Sarawak",
      lokasi: "Julau",
      lat: 2.024275,
      lng: 111.916609,
    ),
    LocationCoordinateData(
      zone: "SWK05",
      negeri: "Sarawak",
      lokasi: "Bitangor",
      lat: 2.169966,
      lng: 111.636641,
    ),
    LocationCoordinateData(
      zone: "SWK05",
      negeri: "Sarawak",
      lokasi: "Rajang",
      lat: 2.137227,
      lng: 111.224885,
    ),
    LocationCoordinateData(
      zone: "SWK06",
      negeri: "Sarawak",
      lokasi: "Kabong",
      lat: 1.803557,
      lng: 111.130108,
    ),
    LocationCoordinateData(
      zone: "SWK06",
      negeri: "Sarawak",
      lokasi: "Lingga",
      lat: 1.250000,
      lng: 111.166666,
    ),
    LocationCoordinateData(
      zone: "SWK06",
      negeri: "Sarawak",
      lokasi: "Sri Aman",
      lat: 1.237031,
      lng: 111.462079,
    ),
    LocationCoordinateData(
      zone: "SWK06",
      negeri: "Sarawak",
      lokasi: "Engkelili",
      lat: 1.138464,
      lng: 111.666259,
    ),
    LocationCoordinateData(
      zone: "SWK06",
      negeri: "Sarawak",
      lokasi: "Betong",
      lat: 1.411517,
      lng: 111.528999,
    ),
    LocationCoordinateData(
      zone: "SWK06",
      negeri: "Sarawak",
      lokasi: "Spaoh",
      lat: 1.462578,
      lng: 111.479364,
    ),
    LocationCoordinateData(
      zone: "SWK06",
      negeri: "Sarawak",
      lokasi: "Pusa",
      lat: 1.619999,
      lng: 111.291599,
    ),
    LocationCoordinateData(
      zone: "SWK06",
      negeri: "Sarawak",
      lokasi: "Saratok",
      lat: 1.738795,
      lng: 111.337840,
    ),
    LocationCoordinateData(
      zone: "SWK06",
      negeri: "Sarawak",
      lokasi: "Roban",
      lat: 1.866759,
      lng: 111.334493,
    ),
    LocationCoordinateData(
      zone: "SWK06",
      negeri: "Sarawak",
      lokasi: "Debak",
      lat: 1.562670,
      lng: 111.422177,
    ),
    LocationCoordinateData(
      zone: "SWK07",
      negeri: "Sarawak",
      lokasi: "Samarahan",
      lat: 1.442757,
      lng: 110.497711,
    ),
    LocationCoordinateData(
      zone: "SWK07",
      negeri: "Sarawak",
      lokasi: "Simunjan",
      lat: 1.072972,
      lng: 110.915332,
    ),
    LocationCoordinateData(
      zone: "SWK07",
      negeri: "Sarawak",
      lokasi: "Serian",
      lat: 1.167035,
      lng: 110.566506,
    ),
    LocationCoordinateData(
      zone: "SWK07",
      negeri: "Sarawak",
      lokasi: "Sebuyau",
      lat: 1.396803,
      lng: 111.071899,
    ),
    LocationCoordinateData(
      zone: "SWK07",
      negeri: "Sarawak",
      lokasi: "Meludam",
      lat: 1.476546,
      lng: 111.213336,
    ),
    LocationCoordinateData(
      zone: "SWK08",
      negeri: "Sarawak",
      lokasi: "Kuching",
      lat: 1.560000,
      lng: 110.345000,
    ),
    LocationCoordinateData(
      zone: "SWK08",
      negeri: "Sarawak",
      lokasi: "Bau",
      lat: 1.417224,
      lng: 110.154629,
    ),
    LocationCoordinateData(
      zone: "SWK08",
      negeri: "Sarawak",
      lokasi: "Lundu",
      lat: 1.671364,
      lng: 109.851969,
    ),
    LocationCoordinateData(
      zone: "SWK08",
      negeri: "Sarawak",
      lokasi: "Sematan",
      lat: 1.807459,
      lng: 109.775842,
    ),
    LocationCoordinateData(
      zone: "SWK09",
      negeri: "Sarawak",
      lokasi: "Zon Khas",
      lat: 4.962580,
      lng: 115.554338,
    ),
    LocationCoordinateData(
      zone: "SGR01",
      negeri: "Selangor",
      lokasi: "Gombak",
      lat: 3.253502,
      lng: 101.653326,
    ),
    LocationCoordinateData(
      zone: "SGR01",
      negeri: "Selangor",
      lokasi: "Hulu Selangor",
      lat: 3.560105,
      lng: 101.658312,
    ),
    LocationCoordinateData(
      zone: "SGR01",
      negeri: "Selangor",
      lokasi: "Rawang",
      lat: 3.320482,
      lng: 101.575924,
    ),
    LocationCoordinateData(
      zone: "SGR01",
      negeri: "Selangor",
      lokasi: "Hulu Langat",
      lat: 3.113117,
      lng: 101.815673,
    ),
    LocationCoordinateData(
      zone: "SGR01",
      negeri: "Selangor",
      lokasi: "Sepang",
      lat: 2.691369,
      lng: 101.750527,
    ),
    LocationCoordinateData(
      zone: "SGR01",
      negeri: "Selangor",
      lokasi: "Petaling",
      lat: 3.083333,
      lng: 101.583333,
    ),
    LocationCoordinateData(
      zone: "SGR01",
      negeri: "Selangor",
      lokasi: "Shah Alam",
      lat: 3.073281,
      lng: 101.518461,
    ),
    LocationCoordinateData(
      zone: "SGR02",
      negeri: "Selangor",
      lokasi: "Sabak Bernam",
      lat: 3.678777,
      lng: 100.990592,
    ),
    LocationCoordinateData(
      zone: "SGR02",
      negeri: "Selangor",
      lokasi: "Kuala Selangor",
      lat: 3.340184,
      lng: 101.249762,
    ),
    LocationCoordinateData(
      zone: "SGR03",
      negeri: "Selangor",
      lokasi: "Klang",
      lat: 3.044917,
      lng: 101.445562,
    ),
    LocationCoordinateData(
      zone: "SGR03",
      negeri: "Selangor",
      lokasi: "Kuala Langat",
      lat: 2.803828,
      lng: 101.495070,
    ),
    LocationCoordinateData(
      zone: "TRG01",
      negeri: "Terengganu",
      lokasi: "Kuala Terengganu",
      lat: 5.329624,
      lng: 103.137014,
    ),
    LocationCoordinateData(
      zone: "TRG01",
      negeri: "Terengganu",
      lokasi: "Marang",
      lat: 5.207711,
      lng: 103.204944,
    ),
    LocationCoordinateData(
      zone: "TRG02",
      negeri: "Terengganu",
      lokasi: "Besut",
      lat: 5.829012,
      lng: 102.552378,
    ),
    LocationCoordinateData(
      zone: "TRG02",
      negeri: "Terengganu",
      lokasi: "Setiu",
      lat: 5.443798,
      lng: 102.825218,
    ),
    LocationCoordinateData(
      zone: "TRG03",
      negeri: "Terengganu",
      lokasi: "Hulu Terengganu",
      lat: 5.073042,
      lng: 103.008937,
    ),
    LocationCoordinateData(
      zone: "TRG04",
      negeri: "Terengganu",
      lokasi: "Kemaman",
      lat: 4.777790,
      lng: 103.033887,
    ),
    LocationCoordinateData(
      zone: "TRG04",
      negeri: "Terengganu",
      lokasi: "Dungun",
      lat: 4.777790,
      lng: 103.033887,
    ),
    LocationCoordinateData(
      zone: "TRG01",
      negeri: "Terengganu",
      lokasi: "Kuala Nerus",
      lat: 5.333333,
      lng: 103.000000,
    ),
    LocationCoordinateData(
      zone: "WLY01",
      negeri: "Putrajaya",
      lokasi: "Putrajaya",
      lat: 2.926361,
      lng: 101.696445,
    ),
    LocationCoordinateData(
      zone: "WLY01",
      negeri: "Federal Territory of Kuala Lumpur",
      lokasi: "Kuala Lumpur",
      lat: 3.139003,
      lng: 101.686855,
    ),
    // duplicate beacuse of sometime it returns in malay and sometimes in english smh
    LocationCoordinateData(
      zone: "WLY01",
      negeri: "Wilayah Persekutuan Kuala Lumpur",
      lokasi: "Kuala Lumpur",
      lat: 3.139003,
      lng: 101.686855,
    ),
    LocationCoordinateData(
      zone: "WLY02",
      negeri: "Labuan Federal Territory",
      lokasi: "Labuan",
      lat: 5.275346,
      lng: 115.247346,
    ),
  ];

  /// Return nearest JAKIM code from the given coordinate and negeri.
  /// Pass administrative area as negeri.
  static String getJakimCodeNearby(
      double latitude, double longitude, String negeri) {
    List<int> tempIndex = [];
    double nearestDistance = 50000; //init distance to be 50 km
    late int nearestIndex;

    for (var i = 0; i < _locationCoordinate.length; i++) {
      if (_locationCoordinate[i].negeri == negeri) {
        // collect index of the same negeri
        tempIndex.add(i);
      }
    }

    for (var index in tempIndex) {
      // calculate distance each of indexes location with user location
      double distance = Geolocator.distanceBetween(latitude, longitude,
          _locationCoordinate[index].lat!, _locationCoordinate[index].lng!);
      // distance returned in meter

      if (distance.compareTo(nearestDistance) == -1) {
        // check the shortest distance
        nearestDistance = distance;
        nearestIndex = index;
      }
    }
    // return the nearby jakim code
    return _locationCoordinate[nearestIndex].zone;
  }
}
