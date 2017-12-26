.class Lnet/youmi/android/bw;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lnet/youmi/android/cp;


# instance fields
.field a:Lnet/youmi/android/cq;

.field b:Lnet/youmi/android/AdActivity;


# direct methods
.method public constructor <init>(Lnet/youmi/android/AdActivity;Lnet/youmi/android/ak;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lnet/youmi/android/cq;

    invoke-direct {v0, p1, p2}, Lnet/youmi/android/cq;-><init>(Lnet/youmi/android/AdActivity;Lnet/youmi/android/ak;)V

    iput-object v0, p0, Lnet/youmi/android/bw;->a:Lnet/youmi/android/cq;

    iput-object p1, p0, Lnet/youmi/android/bw;->b:Lnet/youmi/android/AdActivity;

    invoke-static {}, Lnet/youmi/android/ap;->a()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/bw;->a:Lnet/youmi/android/cq;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/bw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/bw;->a:Lnet/youmi/android/cq;

    invoke-virtual {v0}, Lnet/youmi/android/cq;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bw;->a:Lnet/youmi/android/cq;

    invoke-virtual {v0}, Lnet/youmi/android/cq;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/bw;->b:Lnet/youmi/android/AdActivity;

    invoke-virtual {v0}, Lnet/youmi/android/AdActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bw;->a:Lnet/youmi/android/cq;

    invoke-virtual {v0, p1}, Lnet/youmi/android/cq;->a(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bw;->a:Lnet/youmi/android/cq;

    const-string v1, "text/html"

    const-string v2, "utf-8"

    invoke-virtual {v0, p1, p2, v1, v2}, Lnet/youmi/android/cq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
