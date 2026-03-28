# Deployment Guide for Pear Media

## 🌐 Hosting Options

### Option 1: Vercel (Recommended - Fastest)

**Advantages:**
- Free tier available
- Automatic deployments from Git
- Built-in serverless functions
- Fast global CDN

**Steps:**
1. Install Vercel CLI:
   ```bash
   npm install -g vercel
   ```

2. Deploy:
   ```bash
   cd d:\Projects\Ai_image\pear-media
   vercel
   ```

3. Follow prompts:
   - Connect to GitHub (optional)
   - Select project settings
   - Add environment variables:
     - `GOOGLE_API_KEY`
     - `HUGGINGFACE_API_KEY`

4. Your app will be live at: `https://pear-media.vercel.app`

---

### Option 2: Netlify

**Steps:**
1. Install Netlify CLI:
   ```bash
   npm install -g netlify-cli
   ```

2. Deploy:
   ```bash
   cd d:\Projects\Ai_image\pear-media
   netlify deploy --prod
   ```

3. Set environment variables in Netlify dashboard

4. Your app will be live at: `https://[your-site].netlify.app`

---

### Option 3: GitHub Pages + Heroku/Railway

**For Frontend:**
- Push to `gh-pages` branch for GitHub Pages hosting

**For Backend API:**
- Use Heroku or Railway for Node.js backend
- Set environment variables in platform settings

---

## 🔑 Environment Variables

Set these in your hosting platform:

```env
GOOGLE_API_KEY=your_google_api_key_here
HUGGINGFACE_API_KEY=your_huggingface_api_key_here
REPLICATE_API_KEY=your_replicate_api_key_here
NODE_ENV=production
```

---

## ✅ Pre-Deployment Checklist

- [ ] All API keys configured
- [ ] Environment variables set
- [ ] Tested locally (`npm start`)
- [ ] README.md is complete
- [ ] .gitignore configured
- [ ] No sensitive data in code

---

## 📊 Post-Deployment

1. **Test the live app**: Click all buttons
2. **Check logs**: Monitor for errors
3. **Monitor performance**: Use platform analytics
4. **Update DNS**: If using custom domain

---

## 🆘 Deployment Troubleshooting

### Vercel: "Module not found"
```bash
vercel pull  # Pull environment variables
vercel dev   # Test locally first
```

### Netlify: "Function execution timed out"
- Increase timeout in netlify.toml
- Optimize API calls

### API returns 500 error
- Check environment variables
- Verify API keys are valid
- Check API rate limits

---

## 🚀 Launching Your Project

**Final Steps:**
1. Deploy to chosen platform
2. Test all features
3. Share live link
4. Push to GitHub
5. Record demo video

**Live Link Format:**
- Vercel: `https://pear-media.vercel.app`
- Netlify: `https://pear-media.netlify.app`

---

## 📈 Monitoring & Maintenance

- Check logs daily for first week
- Monitor API usage/quotas
- Update dependencies monthly
- Test with real users

---

**Deployment Complete!** 🎉
