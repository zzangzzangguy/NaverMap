//// The Swift Programming Language
//// https://docs.swift.org/swift-book
//
//import Foundation
//import NMapsMap  // 네이버 맵 SDK 모듈
//import NMapsGeometry
//
///// 네이버 맵 SDK를 위한 유틸리티 구조체
//public struct NMap {
//    /// 네이버 맵 SDK 초기화를 위한 메소드
//    /// - Parameter clientId: 네이버 맵 API 키
//    /// - Parameter completion: 초기화 완료 후 호출되는 클로저 (선택)
//    /// 네이버 맵 SDK 초기화를 위한 메소드
//    /// - Parameter clientId: 네이버 맵 API 키
//    /// - Parameter completion: 초기화 완료 후 호출되는 클로저 (선택)
//    public static func initialize(clientId: String, completion: ((Bool) -> Void)? = nil) {
//        NMFAuthManager.requestAuth(withKey: clientId) { error in
//            if let error = error {
//                print("네이버 맵 초기화 실패: \(error.localizedDescription)")
//                completion?(false)
//            } else {
//                print("네이버 맵 초기화 성공")
//                completion?(true)
//            }
//        }
//    }
//
//    /// 새로운 지도 뷰 인스턴스 생성
//    /// - Returns: 초기화된 NMFMapView 인스턴스
//    public static func createMapView() -> NMFMapView {
//        let mapView = NMFMapView(frame: .zero) // 기본 프레임, 뷰 컨트롤러에서 조정 필요
//        // 초기 위치 설정 (선택 사항, 필요 시 호출자에서 설정)
//        let cameraUpdate = NMFCameraUpdate(scrollTo: NMGLatLng(lat: 37.566535, lng: 126.977969))
//        mapView.moveCamera(cameraUpdate)
//        mapView.zoomLevel = 15
//        return mapView
//    }
//
//    /// 현재 SDK 버전 반환 (지원되지 않을 경우 기본값 반환)
//    public static var sdkVersion: String {
//        // sdkVersion이 더 이상 지원되지 않으므로, 임시로 고정값 반환
//        // 실제 버전은 네이버 맵 SDK 문서나 빌드 설정에서 확인 필요
//        return "Unknown (Check Naver Maps SDK documentation)"
//    }
//
//    // 초기화 방지
//    private init() {}
//}
//
//// 편의성을 위한 별칭 (선택 사항, 공식 이름 유지 권장)
//public typealias NaverMapView = NMFMapView
//public typealias NaverMarker = NMFMarker
