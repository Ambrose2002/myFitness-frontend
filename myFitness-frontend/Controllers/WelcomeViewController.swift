import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    

    private func setupUI() {
        // Background
        setupGradientBackground()

        // Logo
        let logoImageView = UIImageView(image: UIImage(named: "Dumbell&Heart"))
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoImageView)

        // Tagline
        let taglineLabel = UILabel()
        taglineLabel.text = "Track your fitness journey with myFitness"
        taglineLabel.textColor = .white
        taglineLabel.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        taglineLabel.textAlignment = .center
        taglineLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(taglineLabel)

        // Buttons
        let getStartedButton = UIButton(type: .system)
        getStartedButton.setTitle("Get Started", for: .normal)
        getStartedButton.backgroundColor = UIColor.systemGreen
        getStartedButton.setTitleColor(.white, for: .normal)
        getStartedButton.layer.cornerRadius = 10
        getStartedButton.translatesAutoresizingMaskIntoConstraints = false
        getStartedButton.addTarget(self, action: #selector(getStartedTapped), for: .touchUpInside)
        view.addSubview(getStartedButton)

        let loginButton = UIButton(type: .system)
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(UIColor.systemGreen, for: .normal)
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = UIColor.systemGreen.cgColor
        loginButton.layer.cornerRadius = 10
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
        view.addSubview(loginButton)

        // Constraints
        NSLayoutConstraint.activate([
            // Logo Constraints
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            logoImageView.widthAnchor.constraint(equalToConstant: 120),
            logoImageView.heightAnchor.constraint(equalToConstant: 120),

            // Tagline Constraints
            taglineLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 20),
            taglineLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            taglineLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            // Get Started Button Constraints
            getStartedButton.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -20),
            getStartedButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            getStartedButton.widthAnchor.constraint(equalToConstant: 200),
            getStartedButton.heightAnchor.constraint(equalToConstant: 50),

            // Login Button Constraints
            loginButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 200),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func setupGradientBackground() {
            // Create a gradient layer
            let gradientLayer = CAGradientLayer()
            
            // Define the colors of the gradient (e.g., light blue to white)
            gradientLayer.colors = [
                UIColor.systemBlue.cgColor, // Light blue
                UIColor.white.cgColor // White
            ]
            
            // Set the direction of the gradient (vertical or horizontal)
            gradientLayer.startPoint = CGPoint(x: 0.5, y: 0) // Start from top
            gradientLayer.endPoint = CGPoint(x: 0.5, y: 1) // End at bottom

            // Set the gradient layer's frame to match the view's bounds
            gradientLayer.frame = view.bounds
            
            // Add the gradient layer to the view's layer
            view.layer.insertSublayer(gradientLayer, at: 0)
        }

    // Button Actions
    @objc private func getStartedTapped() {
        print("Get Started button tapped")
        // Navigate to onboarding or sign-up screen
    }

    @objc private func loginTapped() {
        print("Login button tapped")
        // Navigate to login screen
    }
}
