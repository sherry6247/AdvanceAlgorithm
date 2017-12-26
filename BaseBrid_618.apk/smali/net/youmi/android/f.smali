.class Lnet/youmi/android/f;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/youmi/android/bp;


# instance fields
.field final synthetic a:Lnet/youmi/android/bb;


# direct methods
.method constructor <init>(Lnet/youmi/android/bb;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/f;->a:Lnet/youmi/android/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/f;)Lnet/youmi/android/bb;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/f;->a:Lnet/youmi/android/bb;

    return-object v0
.end method


# virtual methods
.method public a(Lnet/youmi/android/cx;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lnet/youmi/android/cx;->e()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lnet/youmi/android/f;->a:Lnet/youmi/android/bb;

    invoke-virtual {v0}, Lnet/youmi/android/bb;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/youmi/android/ck;

    invoke-direct {v1, p0}, Lnet/youmi/android/ck;-><init>(Lnet/youmi/android/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lnet/youmi/android/f;->a:Lnet/youmi/android/bb;

    invoke-virtual {v0}, Lnet/youmi/android/bb;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/youmi/android/cn;

    invoke-direct {v1, p0, p1}, Lnet/youmi/android/cn;-><init>(Lnet/youmi/android/f;Lnet/youmi/android/cx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lnet/youmi/android/f;->a:Lnet/youmi/android/bb;

    invoke-virtual {v0}, Lnet/youmi/android/bb;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/youmi/android/cm;

    invoke-direct {v1, p0}, Lnet/youmi/android/cm;-><init>(Lnet/youmi/android/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lnet/youmi/android/f;->a:Lnet/youmi/android/bb;

    invoke-virtual {v0}, Lnet/youmi/android/bb;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/youmi/android/cl;

    invoke-direct {v1, p0, p1}, Lnet/youmi/android/cl;-><init>(Lnet/youmi/android/f;Lnet/youmi/android/cx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
