.class Lnet/youmi/android/ca;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lnet/youmi/android/cq;


# direct methods
.method constructor <init>(Lnet/youmi/android/cq;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ca;->a:Lnet/youmi/android/cq;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ca;->a:Lnet/youmi/android/cq;

    iget-object v0, v0, Lnet/youmi/android/cq;->f:Lnet/youmi/android/AdActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ca;->a:Lnet/youmi/android/cq;

    iget-object v0, v0, Lnet/youmi/android/cq;->f:Lnet/youmi/android/AdActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/youmi/android/AdActivity;->setProgressBarIndeterminateVisibility(Z)V

    iget-object v0, p0, Lnet/youmi/android/ca;->a:Lnet/youmi/android/cq;

    iget-object v0, v0, Lnet/youmi/android/cq;->f:Lnet/youmi/android/AdActivity;

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Lnet/youmi/android/AdActivity;->setProgress(I)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ca;->a:Lnet/youmi/android/cq;

    iget-object v0, v0, Lnet/youmi/android/cq;->f:Lnet/youmi/android/AdActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/youmi/android/AdActivity;->setProgressBarIndeterminateVisibility(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ca;->a:Lnet/youmi/android/cq;

    iget-object v0, v0, Lnet/youmi/android/cq;->f:Lnet/youmi/android/AdActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ca;->a:Lnet/youmi/android/cq;

    iget-object v0, v0, Lnet/youmi/android/cq;->f:Lnet/youmi/android/AdActivity;

    invoke-virtual {v0, p2}, Lnet/youmi/android/AdActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
