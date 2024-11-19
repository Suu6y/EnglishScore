import SwiftUI

struct TestResultsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Header
                Text("Tested on 19 Nov 2024")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()

                // Description Section
                VStack(alignment: .leading, spacing: 10) {
                    Text("At B2 · Upper Intermediate you can:")
                        .font(.headline)
                        .padding(.bottom, 5)

                    Text("""
                        - Understand extended speech and lectures and follow complex lines of argument on reasonably familiar topics, as well as most films, TV series and TV news and current affairs programmes;
                        - Read opinion articles and reports on modern problems as well as contemporary fictional and non-fictional text;
                        - Interact with a reasonable degree of fluency and spontaneity and actively participate in discussions on familiar contexts, explaining and defending your views;
                        - Use an extensive variety of phrases and complex grammatical structures to present detailed descriptions on subjects related to your fields of interest.
                        """)
                        .font(.body)
                        .foregroundColor(.gray)
                }
                .padding()

                // Core Skills Section
                VStack(spacing: 20) {
                    HStack {
                        Text("CORE SKILLS TEST")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Spacer()
                        Text("B2 · Upper Intermediate")
                            .font(.headline)
                    }
                    .padding()

                    HStack(spacing: 15) {
                        SkillProgressBar(title: "Grammar", score: 487, maxScore: 600)
                        SkillProgressBar(title: "Reading", score: 432, maxScore: 600)
                        SkillProgressBar(title: "Vocabulary", score: 503, maxScore: 600)
                        SkillProgressBar(title: "Listening", score: 448, maxScore: 600)
                    }
                }
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(15)

                // Certificate Section
                VStack {
                    Image(systemName: "checkmark.shield.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.green)
                    Text("You’ve unlocked the B2 level certificate")
                        .font(.headline)
                        .padding(.bottom, 10)
                    Button(action: {
                        // Certificate action
                    }) {
                        Text("Get my certificate")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
            .padding()
        }
        .background(Color.white.edgesIgnoringSafeArea(.all))
    }
}

// Custom Skill Progress Bar
struct SkillProgressBar: View {
    let title: String
    let score: Int
    let maxScore: Int

    var body: some View {
        VStack {
            Text(title)
                .font(.subheadline)
                .foregroundColor(.gray)
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 10)
                    .foregroundColor(Color(UIColor.systemGray4))
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: CGFloat(score) / CGFloat(maxScore) * 100, height: 10)
                    .foregroundColor(.blue)
            }
            Text("\(score)/\(maxScore)")
                .font(.caption)
                .foregroundColor(.gray)
        }
        .frame(width: 80)
    }
}

struct TestResultsView_Previews: PreviewProvider {
    static var previews: some View {
        TestResultsView()
    }
}
