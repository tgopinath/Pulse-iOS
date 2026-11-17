import SwiftUI
import AVFoundation

/// Amazon Pulse for iPhone: a native shell around the live web app at https://thedal-pulse.vercel.app/.
/// The page recognises this shell (window.KolamShell and the "AmazonPulse-iOS" user-agent token) and
/// switches to its iOS look from the Kolam iOS kit: navigation bar with large titles, tab bar, iOS controls.
/// In Safari or any other browser the same site keeps its Kolam web look.
@main
struct AmazonPulseApp: App {
    init() {
        // Sound plays even with the ring/silent switch on, like any media app.
        try? AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [.duckOthers])
        try? AVAudioSession.sharedInstance().setActive(true)
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
