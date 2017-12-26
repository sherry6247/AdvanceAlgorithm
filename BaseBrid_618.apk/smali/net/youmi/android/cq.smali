.class Lnet/youmi/android/cq;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lnet/youmi/android/j;


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Lnet/youmi/android/ak;

.field c:Lnet/youmi/android/ci;

.field d:I

.field e:I

.field f:Lnet/youmi/android/AdActivity;


# direct methods
.method public constructor <init>(Lnet/youmi/android/AdActivity;Lnet/youmi/android/ak;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x3ed

    iput v0, p0, Lnet/youmi/android/cq;->d:I

    const/16 v0, 0x3ee

    iput v0, p0, Lnet/youmi/android/cq;->e:I

    iput-object p1, p0, Lnet/youmi/android/cq;->f:Lnet/youmi/android/AdActivity;

    iput-object p2, p0, Lnet/youmi/android/cq;->b:Lnet/youmi/android/ak;

    invoke-virtual {p0, p1}, Lnet/youmi/android/cq;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cq;->f:Lnet/youmi/android/AdActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cq;->f:Lnet/youmi/android/AdActivity;

    invoke-virtual {v0}, Lnet/youmi/android/AdActivity;->finish()V

    :cond_0
    return-void
.end method

.method a(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lnet/youmi/android/cq;->setBackgroundColor(I)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    iget v1, p0, Lnet/youmi/android/cq;->d:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    new-instance v0, Lnet/youmi/android/ci;

    iget-object v1, p0, Lnet/youmi/android/cq;->b:Lnet/youmi/android/ak;

    invoke-direct {v0, p1, v1, p0}, Lnet/youmi/android/ci;-><init>(Landroid/app/Activity;Lnet/youmi/android/ak;Lnet/youmi/android/j;)V

    iput-object v0, p0, Lnet/youmi/android/cq;->c:Lnet/youmi/android/ci;

    iget-object v0, p0, Lnet/youmi/android/cq;->c:Lnet/youmi/android/ci;

    iget v1, p0, Lnet/youmi/android/cq;->e:I

    invoke-virtual {v0, v1}, Lnet/youmi/android/ci;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lnet/youmi/android/cq;->c:Lnet/youmi/android/ci;

    invoke-virtual {v2}, Lnet/youmi/android/ci;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/cq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lnet/youmi/android/cq;->c:Lnet/youmi/android/ci;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/cq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lnet/youmi/android/cq;->c:Lnet/youmi/android/ci;

    invoke-virtual {p0, v0, v1}, Lnet/youmi/android/cq;->a(Landroid/webkit/WebView;Lnet/youmi/android/ci;)V

    return-void
.end method

.method a(Landroid/webkit/WebView;Lnet/youmi/android/ci;)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    new-instance v0, Lnet/youmi/android/cb;

    invoke-direct {v0, p0}, Lnet/youmi/android/cb;-><init>(Lnet/youmi/android/cq;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lnet/youmi/android/cc;

    invoke-direct {v0, p0}, Lnet/youmi/android/cc;-><init>(Lnet/youmi/android/cq;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    new-instance v0, Lnet/youmi/android/ca;

    invoke-direct {v0, p0}, Lnet/youmi/android/ca;-><init>(Lnet/youmi/android/cq;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    iget-object v0, p0, Lnet/youmi/android/cq;->c:Lnet/youmi/android/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cq;->c:Lnet/youmi/android/ci;

    iget-object v1, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/youmi/android/ci;->a(Z)V

    iget-object v0, p0, Lnet/youmi/android/cq;->c:Lnet/youmi/android/ci;

    iget-object v1, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/youmi/android/ci;->b(Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    iget-object v0, p0, Lnet/youmi/android/cq;->c:Lnet/youmi/android/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cq;->c:Lnet/youmi/android/ci;

    iget-object v1, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/youmi/android/ci;->a(Z)V

    iget-object v0, p0, Lnet/youmi/android/cq;->c:Lnet/youmi/android/ci;

    iget-object v1, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/youmi/android/ci;->b(Z)V

    :cond_0
    return-void
.end method

.method e()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cq;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
