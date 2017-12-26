.class Lnet/youmi/android/az;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/AdActivity;


# direct methods
.method constructor <init>(Lnet/youmi/android/AdActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/az;->a:Lnet/youmi/android/AdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/az;->a:Lnet/youmi/android/AdActivity;

    iget-object v0, v0, Lnet/youmi/android/AdActivity;->a:Lnet/youmi/android/ax;

    invoke-virtual {v0}, Lnet/youmi/android/ax;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/az;->a:Lnet/youmi/android/AdActivity;

    iget-object v0, v0, Lnet/youmi/android/AdActivity;->a:Lnet/youmi/android/ax;

    invoke-virtual {v0}, Lnet/youmi/android/ax;->j()V

    iget-object v0, p0, Lnet/youmi/android/az;->a:Lnet/youmi/android/AdActivity;

    iget-object v1, p0, Lnet/youmi/android/az;->a:Lnet/youmi/android/AdActivity;

    iget-object v1, v1, Lnet/youmi/android/AdActivity;->a:Lnet/youmi/android/ax;

    invoke-virtual {v1}, Lnet/youmi/android/ax;->f()I

    move-result v1

    iget-object v2, p0, Lnet/youmi/android/az;->a:Lnet/youmi/android/AdActivity;

    iget-object v2, v2, Lnet/youmi/android/AdActivity;->a:Lnet/youmi/android/ax;

    invoke-virtual {v2}, Lnet/youmi/android/ax;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a;->d(Landroid/app/Activity;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
