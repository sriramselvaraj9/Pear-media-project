# Pear Media - Quick Start Guide

## 🚀 Getting Started in 5 Minutes

### Prerequisites
- Node.js 18+ installed
- npm installed
- A code editor (VS Code recommended)

### Step 1: Download/Clone Project
```bash
cd your-projects-folder
git clone https://github.com/yourusername/pear-media.git
cd pear-media
```

### Step 2: Install Dependencies
```bash
npm install
```

### Step 3: Start the Server
```bash
npm start
```

You should see:
```
🚀 Pear Media API running on http://localhost:3000
```

### Step 4: Open in Browser
Visit: `http://localhost:3000`

## 📝 Using the Application

### Text Enhancement
1. Type a text prompt in the left panel
2. Click "Analyze & Enhance"
3. Review the analysis (entities, sentiment, tone)
4. Click "Approve & Generate" to proceed to image generation

### Image Generation
1. Upload an image OR enter a prompt
2. Click "Generate/Analyze Images"
3. View generated variations
4. Click images to open in new tab

## 🔧 Configuration

Update `.env` file with your API keys:
```env
GOOGLE_API_KEY=your_key_here
HUGGINGFACE_API_KEY=your_key_here
```

## 📦 Deployment

### Deploy to Vercel (Recommended)
```bash
npm install -g vercel
vercel
# Follow the prompts
```

### Deploy to Netlify
```bash
npm install -g netlify-cli
netlify deploy --prod
```

## 🐛 Troubleshooting

### Port Already in Use
```bash
# Use different port
PORT=3001 npm start
```

### Image Generation Not Working
- Check API keys in `.env`
- Verify internet connection
- Check API rate limits

### CORS Errors
- Backend handles CORS - should work from any origin
- Try clearing browser cache

## 📚 API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| POST | /api/enhance-text | Analyze and enhance text |
| POST | /api/generate-image | Generate or analyze images |
| GET | /api/health | Health check |

## 💡 Tips & Tricks

1. **Better Prompts**: More detailed text produces better enhancements
2. **Image Variations**: Try different tones (positive/negative) for variety
3. **Approved Prompts**: Auto-fill image prompt field for consistency

## ⚡ Performance Tips

- Text analysis: ~2-3s
- Image generation: ~10-30s (first time may be slower)
- Results cached in browser session

## 📞 Need Help?

1. Check README.md for detailed docs
2. Review .env.example for config options
3. Check browser console for errors (F12)
4. Check terminal for API errors

---

**Ready to go!** Start creating! 🎨
