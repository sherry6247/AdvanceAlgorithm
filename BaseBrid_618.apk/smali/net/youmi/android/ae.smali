.class Lnet/youmi/android/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/youmi/android/bp;


# instance fields
.field final synthetic a:Lnet/youmi/android/y;


# direct methods
.method constructor <init>(Lnet/youmi/android/y;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ae;->a:Lnet/youmi/android/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/ae;)Lnet/youmi/android/y;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ae;->a:Lnet/youmi/android/y;

    return-object v0
.end method


# virtual methods
.method public a(Lnet/youmi/android/cx;)V
    .locals 3

    invoke-virtual {p1}, Lnet/youmi/android/cx;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/youmi/android/cx;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/youmi/android/ae;->a:Lnet/youmi/android/y;

    invoke-virtual {v1}, Lnet/youmi/android/y;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lnet/youmi/android/bg;

    invoke-direct {v2, p0, v0}, Lnet/youmi/android/bg;-><init>(Lnet/youmi/android/ae;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
