# Pear Media - AI Text Enhancement & Image Generation

An innovative web-based platform that integrates multiple AI APIs to perform text enhancement and image generation workflows.

## 🎯 Features

### ✨ Text Enhancement Workflow
- **Text Analysis**: Uses Google Cloud NLP API to analyze tone, sentiment, and entities
- **Prompt Enhancement**: Automatically improves text prompts with AI suggestions
- **Entity Recognition**: Detects and highlights key entities in the text
- **Approval System**: Users can approve enhanced prompts before image generation

### 🖼️ Image Generation Workflow
- **Image Upload**: Upload images for analysis and variation generation
- **AI Analysis**: Analyzes uploaded images for objects, themes, and captions
- **Image Generation**: Generates variations and new images based on prompts
- **Multiple Sources**: Integrates multiple image generation APIs

## 🛠️ Tech Stack

- **Frontend**: HTML5, CSS3, Vanilla JavaScript
- **Backend**: Node.js, Express.js
- **APIs Integrated**:
  - Google Cloud NLP (Text Analysis)
  - HuggingFace (Image Analysis & Generation)
  - Stable Diffusion (Advanced Image Generation)
  - DeepAI (Fallback Image Generation)
- **Hosting**: Vercel, Netlify, or GitHub Pages
- **Package Manager**: npm

## 📋 Prerequisites

- Node.js 18.x or higher
- npm or yarn
- API Keys for:
  - Google Cloud NLP
  - HuggingFace
  - (Optional) Replicate, DeepAI

## 🚀 Installation & Setup

### 1. Clone the Repository
```bash
git clone https://github.com/yourusername/pear-media.git
cd pear-media
```

### 2. Install Dependencies
```bash
npm install
```

### 3. Configure Environment Variables
Create a `.env` file in the root directory:

```env
GOOGLE_API_KEY=YOUR_GOOGLE_API_KEY_HERE
HUGGINGFACE_API_KEY=YOUR_HUGGINGFACE_API_KEY_HERE
REPLICATE_API_KEY=your_replicate_key_here
NODE_ENV=development
PORT=3000
```

### 4. Get Your API Keys

#### Google Cloud NLP API
1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Create a new project
3. Enable "Cloud Natural Language API"
4. Create an API key
5. Copy the key to `.env`

#### HuggingFace API
1. Sign up at [HuggingFace](https://huggingface.co/)
2. Generate an API token from Settings → Access Tokens
3. Copy the token to `.env`

### 5. Run Locally
```bash
npm start
# or for development with auto-reload
npm run dev
```

Visit `http://localhost:3000` in your browser.

## 📝 API Endpoints

### POST `/api/enhance-text`
Analyzes and enhances text prompts using Google Cloud NLP.

**Request:**
```json
{
  "text": "A beautiful sunset over mountains"
}
```

**Response:**
```json
{
  "original": "A beautiful sunset over mountains",
  "enhanced": "A beautiful sunset over mountains, featuring mountains, sunset, vibrant, energetic, high quality, detailed",
  "entities": ["sunset", "mountains"],
  "sentiment": "Positive",
  "tone": "Professional and descriptive"
}
```

### POST `/api/generate-image`
Generates or analyzes images based on prompts or uploaded files.

**Request (with prompt):**
```bash
POST /api/generate-image
Content-Type: application/json

{
  "prompt": "A cyberpunk city at night with neon lights"
}
```

**Request (with image file):**
```bash
POST /api/generate-image
Content-Type: multipart/form-data

form data:
- image: [file]
- prompt: (optional)
```

**Response:**
```json
{
  "analysis": {
    "description": "A cityscape with buildings and lights",
    "objects": ["city", "buildings", "lights"],
    "confidence": 0.85
  },
  "generated_images": [
    "data:image/png;base64,...",
    "https://api.example.com/image2.png"
  ],
  "count": 3
}
```

## 📊 Project Workflow

### Text Enhancement Flow
1. User enters text prompt
2. System analyzes with Google Cloud NLP
3. Displays entities and sentiment
4. AI generates enhanced version
5. User approves or tries again
6. Proceeds to image generation

### Image Generation Flow
1. User uploads image OR enters prompt
2. (If image) System analyzes for objects/theme
3. Generates image variations/variations
4. Displays results in grid
5. User can download or regenerate

## 🌐 Deployment

### Deploy to Vercel
```bash
npm install -g vercel
vercel
```

### Deploy to Netlify
```bash
npm install -g netlify-cli
netlify deploy --prod --dir=.
```

### Deploy to GitHub Pages
```bash
npm run build
# Push to gh-pages branch
```

## 📚 Project Structure

```
pear-media/
├── api/
│   └── index.js                 # Express server & API routes
├── index.html                   # Main frontend application
├── package.json                 # Dependencies & scripts
├── .env.example                 # Environment variables template
├── .gitignore                   # Git ignore rules
├── README.md                    # This file
└── vercel.json                  # Vercel configuration
```

## 🎨 UI/UX Features

- **Dual-Panel Layout**: Side-by-side workflows for easy access
- **Real-time Feedback**: Loading indicators and instant results
- **Gradient Design**: Modern purple gradient aesthetic
- **Responsive Design**: Works on desktop, tablet, and mobile
- **Error Handling**: User-friendly error messages
- **Success Notifications**: Confirmation messages for actions

## 🔧 Configuration Files

### vercel.json
```json
{
  "version": 2,
  "builds": [
    { "src": "api/index.js", "use": "@vercel/node" },
    { "src": "index.html", "use": "@vercel/static" }
  ],
  "routes": [
    { "src": "/api/(.*)", "dest": "api/index.js" },
    { "src": "/(.*)", "dest": "/index.html" }
  ]
}
```

## 🧪 Testing

### Test Text Enhancement
1. Open `http://localhost:3000`
2. Enter: "A magical forest with glowing creatures"
3. Click "Analyze & Enhance"
4. Observe entities and sentiment
5. Review enhanced prompt

### Test Image Generation
1. After enhancing text, click "Approve & Generate"
2. Or enter custom prompt
3. Click "Generate/Analyze Images"
4. View generated variations

## 🐛 Troubleshooting

### API Key Issues
- Ensure `.env` file exists with correct keys
- Check API keys have not expired
- Verify API quotas/limits not exceeded

### Image Generation Failures
- Fallback to placeholder images
- Check internet connection
- Verify HuggingFace API availability

### CORS Errors
- Backend properly configured with CORS middleware
- Frontend uses relative paths for API calls

## 📖 API Integration Details

### Google Cloud NLP
- Provides entity recognition and sentiment analysis
- Returns up to 5 key entities
- Sentiment scores: negative (-1 to 0), neutral (≈0), positive (0 to 1)

### HuggingFace
- Image-to-text model for analysis
- Stable Diffusion 2.1 for generation
- Rate limited on free tier

### Fallback Strategy
- If primary API fails, try alternative
- Finally, use placeholder image service

## ⚙️ Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| GOOGLE_API_KEY | Google Cloud NLP API Key | Yes |
| HUGGINGFACE_API_KEY | HuggingFace API Token | Yes |
| REPLICATE_API_KEY | Replicate API Key | No |
| NODE_ENV | Environment (development/production) | No |
| PORT | Server port | No (defaults to 3000) |

## 🚀 Performance Optimization

- Text analysis: ~2-3 seconds
- Image analysis: ~5-10 seconds
- Image generation: ~10-30 seconds (depends on API)
- Lazy loading for images
- Memory storage for file uploads (no disk writes)

## 📦 Dependencies

- **express**: Web framework
- **cors**: Cross-origin resource sharing
- **axios**: HTTP client for API calls
- **multer**: File upload handling
- **dotenv**: Environment variable management
- **body-parser**: Request body parsing

## 🤝 Contributing

1. Fork the repository
2. Create feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open Pull Request

## 📄 License

This project is licensed under the MIT License - see LICENSE file for details.

## 👨‍💻 Author

Pear Media Development Team

## 🙏 Acknowledgments

- Google Cloud Platform for NLP API
- HuggingFace for ML models
- Vercel for hosting platform
- All contributors and users

## 📞 Support

For issues or questions:
1. Check the Troubleshooting section
2. Review API documentation
3. Create an issue on GitHub
4. Contact support team

---

**Last Updated**: March 28, 2024
**Current Version**: 1.0.0
**Status**: Production Ready ✓
