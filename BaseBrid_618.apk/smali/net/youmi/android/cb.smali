.class Lnet/youmi/android/cb;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lnet/youmi/android/cq;


# direct methods
.method constructor <init>(Lnet/youmi/android/cq;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/cb;->a:Lnet/youmi/android/cq;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/youmi/android/cb;->a:Lnet/youmi/android/cq;

    iget-object v0, v0, Lnet/youmi/android/cq;->c:Lnet/youmi/android/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cb;->a:Lnet/youmi/android/cq;

    iget-object v0, v0, Lnet/youmi/android/cq;->c:Lnet/youmi/android/ci;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/youmi/android/ci;->a(Z)V

    iget-object v0, p0, Lnet/youmi/android/cb;->a:Lnet/youmi/android/cq;

    iget-object v0, v0, Lnet/youmi/android/cq;->c:Lnet/youmi/android/ci;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/youmi/android/ci;->b(Z)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/cb;->a:Lnet/youmi/android/cq;

    iget-object v0, v0, Lnet/youmi/android/cq;->f:Lnet/youmi/android/AdActivity;

    invoke-static {v0, p1, p2}, Lnet/youmi/android/bl;->a(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/cb;->a:Lnet/youmi/android/cq;

    iget-object v0, v0, Lnet/youmi/android/cq;->f:Lnet/youmi/android/AdActivity;

    invoke-static {v0, p2}, Lnet/youmi/android/ad;->f(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/cb;->a:Lnet/youmi/android/cq;

    iget-object v0, v0, Lnet/youmi/android/cq;->f:Lnet/youmi/android/AdActivity;

    invoke-static {v0, p2}, Lnet/youmi/android/ad;->c(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/youmi/android/cb;->a:Lnet/youmi/android/cq;

    iget-object v0, v0, Lnet/youmi/android/cq;->f:Lnet/youmi/android/AdActivity;

    invoke-static {v0, p2}, Lnet/youmi/android/ad;->d(Landroid/app/Activity;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_3
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "market://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lnet/youmi/android/cb;->a:Lnet/youmi/android/cq;

    iget-object v1, v1, Lnet/youmi/android/cq;->f:Lnet/youmi/android/AdActivity;

    invoke-virtual {v1, v0}, Lnet/youmi/android/AdActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1
.end method
