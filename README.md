# Planetary Simulation 🌌

An interactive solar system simulation built with Processing that displays all planets orbiting the sun with real-time data integration, realistic physics, and engaging visual effects.

![Solar System Demo](https://img.shields.io/badge/Processing-3.x-blue) ![Status](https://img.shields.io/badge/status-active-green) ![License](https://img.shields.io/badge/license-MIT-blue)

## ⚡ Quick Start

1. **Download Processing** from [processing.org](https://processing.org/download/)
2. **Clone this repo**: `git clone https://github.com/ti84plusprograms/Planetary-Simulation.git`
3. **Open** `Solar_System_PlanetAPI/Solar_System_PlanetAPI.pde` in Processing
4. **Install Sound Library**: Tools → Add Tool → Libraries → Search "Sound" → Install
5. **Click Play** ▶️ and explore the solar system!

> 💡 **Tip**: Hover over planets to see detailed information, use the control buttons to pause or speed up!

## 🚀 Features

### Interactive Solar System
- **9 Planets**: All planets including Pluto with realistic orbital mechanics
- **Dynamic Orbits**: Elliptical orbits with accurate relative speeds and distances
- **Real-time Animation**: Smooth 60 FPS animation with planetary rotation

### Live Data Integration
- **API Integration**: Fetches real planetary data from API Ninjas
- **Real-time Updates**: Mass, radius, orbital period, and temperature data
- **Accurate Information**: Scientific data for educational purposes

### Interactive Controls
- **⏸️ Pause/Play**: Stop and resume planetary motion
- **⏩ Fast Forward**: Speed up the simulation for faster observation
- **🖱️ Hover Information**: Click on any planet to view detailed facts

### Visual Effects
- **✨ Starfield**: Animated background stars
- **🪨 Asteroid Belt**: Realistic asteroid belt between Mars and Jupiter
- **🎵 Audio**: Immersive background music
- **🖼️ Planet Textures**: High-quality planet images

## 📋 Requirements

### Software Requirements
- **Processing 3.x** or later ([Download here](https://processing.org/download/))
- **Java 8** or later
- **Internet connection** for API data fetching
- **Screen Resolution**: Minimum 1400x800 pixels (window size)
- **RAM**: 512MB+ available memory recommended

### Processing Libraries
- **Sound Library**: Required for background audio
  - Install via: Tools → Add Tool → Libraries → Search "Sound" → Install
- **JSON Library**: Included (uses `org.json` from included jar file)

## 🛠️ Installation & Setup

### 1. Install Processing
Download and install Processing from [processing.org](https://processing.org/download/)

### 2. Clone the Repository
```bash
git clone https://github.com/ti84plusprograms/Planetary-Simulation.git
cd Planetary-Simulation
```

### 3. API Setup
The simulation uses API Ninjas for planetary data. 

> ⚠️ **Security Note**: The current code includes an API key. For production or public deployment, you should use your own API key.

**To set up your own API key:**
1. Sign up at [API Ninjas](https://api.api-ninjas.com/)
2. Get your free API key (1000 requests/month free)
3. Replace the API key in `Solar_System_PlanetAPI.pde`:
```java
String apiKey = "YOUR_API_KEY_HERE";
```

### 4. Install Required Libraries
1. Open Processing IDE
2. Go to **Tools** → **Add Tool** → **Libraries**
3. Search for "**Sound**" and install the Sound library
4. The JSON library (`json-20210307.jar`) is already included in the `code/` folder

### 5. Run the Simulation
1. File → Open → Navigate to `Solar_System_PlanetAPI/Solar_System_PlanetAPI.pde`
2. Click the Play button (▶️) to run the simulation
3. Enjoy exploring the solar system!

## 🎮 How to Use

### Application Window
When you run the simulation, you'll see:
- **Central Sun**: Bright yellow sun at the center
- **Orbiting Planets**: All 9 planets following elliptical paths
- **Starry Background**: Animated stars creating a space atmosphere
- **Asteroid Belt**: Animated asteroids between Mars and Jupiter
- **Control Buttons**: Two circular buttons (Pause/Play and Fast Forward)

### Controls
| Action | Description |
|--------|-------------|
| **Mouse Hover** | Hover over any planet to see detailed information |
| **Left Button (Pause/Play)** | Click to pause/resume planetary motion |
| **Right Button (Fast Forward)** | Click to toggle 2x speed mode |

### Information Display
When hovering over a planet, a green information panel appears showing:
- 🌍 **Planet Mass**: Mass relative to Earth
- 📏 **Planet Radius**: Radius relative to Earth  
- 🔄 **Revolution Time**: Orbital period in days
- 🌡️ **Temperature**: Surface temperature in Kelvin
- 📍 **Distance**: Distance from the Sun

### Visual Feedback
- **Green Highlight**: Planets highlight when hovered
- **Button States**: Buttons change color when activated
- **Smooth Animation**: 60 FPS for fluid motion
- **Dynamic Text**: Helpful instructions appear at the bottom

## 🏗️ Project Structure

```
Solar_System_PlanetAPI/
├── Solar_System_PlanetAPI.pde  # Main sketch file
├── planet.pde                  # Planet class definition
├── asteroid.pde               # Asteroid belt implementation
├── button.pde                 # UI controls
├── star.pde                   # Background stars
├── sound.mp3                  # Background audio
├── code/
│   └── json-20210307.jar     # JSON parsing library
└── data/
    ├── mercury.png           # Planet textures
    ├── venus.png
    ├── earth.png
    ├── mars.png
    ├── jupiter.png
    ├── saturn.png
    ├── uranus.png
    ├── neptune.png
    ├── pluto.png
    ├── sun.png
    ├── asteroid.png
    ├── asteroid2.png
    └── sound.mp3            # Audio file
```

## 🔧 Technical Details

### Planet Class
- **Orbital Mechanics**: Elliptical orbits using trigonometric calculations
- **Visual Rendering**: Image-based planets with scaling
- **Data Display**: Dynamic fact rendering on hover

### API Integration
- **HTTP Requests**: RESTful API calls to fetch planetary data
- **JSON Parsing**: Processes real-time astronomical data
- **Error Handling**: Graceful fallbacks for network issues

### Performance
- **60 FPS**: Smooth animation with optimized rendering
- **Memory Efficient**: Smart resource management
- **Scalable**: Easy to add more celestial bodies

## 🐛 Troubleshooting

### Common Issues

**🔇 Audio Not Playing**
- Ensure `sound.mp3` is in the sketch folder
- Install Processing Sound library: Tools → Add Tool → Libraries → Search "Sound"
- Check computer audio/volume settings
- Try commenting out sound-related lines if issues persist

**🌍 Planets Not Loading/Displaying**
- Check internet connection for API calls
- Verify all image files are in the `data/` folder
- Ensure API key is valid (check console for error messages)
- Try running without internet to use fallback data

**🐌 Performance Issues**
- Close other applications to free up memory
- Reduce frame rate: change `frameRate(60);` to `frameRate(30);`
- Ensure Java has sufficient heap memory
- Try running on a computer with better graphics capabilities

**❌ Compilation Errors**
- Verify Processing Sound library is installed
- Check that `json-20210307.jar` is in the `code/` folder
- Ensure all `.pde` files are in the same folder
- Try restarting Processing IDE

**🌐 API Errors (Check console output)**
- `HTTP 401`: Invalid API key - get a new one from API Ninjas
- `HTTP 429`: Rate limit exceeded - wait or upgrade API plan
- `HTTP timeout`: Check internet connection
- JSON parsing errors: API response format may have changed

**🖱️ Controls Not Working**
- Ensure mouse is over the application window
- Check that button coordinates are correct for your screen size
- Try clicking directly on the pause/play buttons (circular areas)

## 🎓 Educational Value

This simulation is perfect for:
- **Astronomy Education**: Learn about planetary characteristics
- **Physics Concepts**: Understand orbital mechanics
- **Programming Skills**: Study object-oriented design in Processing
- **API Integration**: Learn how to work with external data sources

## 🤝 Contributing

Contributions are welcome! Areas for improvement:
- Add more celestial bodies (moons, comets)
- Implement zoom and pan functionality
- Add more detailed planetary information
- Improve visual effects and animations
- Add keyboard shortcuts
- Implement save/load simulation states

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🙏 Credits

- **Planet Data**: [API Ninjas Planets API](https://api.api-ninjas.com/)
- **Planet Images**: NASA/Public Domain
- **Background Music**: Included audio track
- **Processing Framework**: [Processing Foundation](https://processing.org/)

## 📞 Support

For questions or issues:
1. Check the troubleshooting section above
2. Open an issue on GitHub
3. Review the Processing documentation

---

**Made with ❤️ and Processing**

*Explore the cosmos from your computer! 🚀*