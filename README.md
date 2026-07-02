# NewsCloud ☁️

A Flutter news aggregator that pulls live top headlines from [newsapi.org](https://newsapi.org), browsable by category, with a clean card-based feed.

## Demo

![Demo](docs/images/demo.gif)

## Screenshots

| Main View | Article Fallback Image |
|---|---|
| ![Main view](docs/images/main_view.jpg) | ![Placeholder image state](docs/images/placeholder_image_news.jpg) |

## Features

- **Live headlines** fetched from newsapi.org, sorted by category (Business, Entertainment, Health, Science, Technology, Sports)
- **Category browsing** — a horizontal scrollable list of categories; tapping one opens a filtered headline feed for that category
- **Card-based feed** — each article card shows its image, title, subtitle, and author
- **Graceful fallback image** for articles with no image URL, instead of a broken/blank card
- **Loading and error states** handled explicitly while headlines are fetched

## Tech Stack

- **Flutter** — cross-platform UI toolkit, `CustomScrollView`/slivers for the feed
- **dio** — HTTP client for the newsapi.org integration
- **newsapi.org** — live news data source

## Project Structure

```
lib/
├── models/            # ArticleModel, CategoryModel
├── services/           # NewsService (API calls)
├── views/               # HomeView, CategoryView
├── widgets/               # NewsCard, NewsListView, NewsListViewBuilder,
│                             CategoriesListView, Category, LoadingCircle
└── main.dart
```

## Getting Started

1. **Clone the repo**
   ```bash
   git clone https://github.com/Omar-E-Khalifa/News-App.git
   cd News-App
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Add your API key**
   Create a `secrets.json` file in the project root (this file is git-ignored):
   ```json
   { "NEWS_API_KEY": "your-newsapi.org-key" }
   ```
   Get a free key at [newsapi.org](https://newsapi.org/).

4. **Run the app**
   ```bash
   flutter run --dart-define-from-file=secrets.json
   ```

## Roadmap

- Add a full article detail view (in-app WebView or reader view) — currently tapping an article card does nothing
- Pull-to-refresh on the feed

## Author

Built by [Omar Essam](https://github.com/Omar-E-Khalifa) as part of a self-directed Flutter learning journey.