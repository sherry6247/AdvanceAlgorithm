.class Lnet/youmi/android/cl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/f;

.field private final synthetic b:Lnet/youmi/android/cx;


# direct methods
.method constructor <init>(Lnet/youmi/android/f;Lnet/youmi/android/cx;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/f;

    iput-object p2, p0, Lnet/youmi/android/cl;->b:Lnet/youmi/android/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/f;

    invoke-static {v0}, Lnet/youmi/android/f;->a(Lnet/youmi/android/f;)Lnet/youmi/android/bb;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/bb;->a(Lnet/youmi/android/bb;)V

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/f;

    invoke-static {v0}, Lnet/youmi/android/f;->a(Lnet/youmi/android/f;)Lnet/youmi/android/bb;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/bb;->c(Lnet/youmi/android/bb;)Lnet/youmi/android/ax;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/ax;->a()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/f;

    invoke-static {v0}, Lnet/youmi/android/f;->a(Lnet/youmi/android/f;)Lnet/youmi/android/bb;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/bb;->e(Lnet/youmi/android/bb;)V

    :goto_1
    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/f;

    invoke-static {v0}, Lnet/youmi/android/f;->a(Lnet/youmi/android/f;)Lnet/youmi/android/bb;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/bb;->c(Lnet/youmi/android/bb;)Lnet/youmi/android/ax;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/cl;->b:Lnet/youmi/android/cx;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/youmi/android/cx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/youmi/android/ax;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/f;

    invoke-static {v0}, Lnet/youmi/android/f;->a(Lnet/youmi/android/f;)Lnet/youmi/android/bb;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/bb;->c(Lnet/youmi/android/bb;)Lnet/youmi/android/ax;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/ax;->j()V

    iget-object v0, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/f;

    invoke-static {v0}, Lnet/youmi/android/f;->a(Lnet/youmi/android/f;)Lnet/youmi/android/bb;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/bb;->d(Lnet/youmi/android/bb;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/cl;->b:Lnet/youmi/android/cx;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/youmi/android/cx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/youmi/android/a;->a(Landroid/app/Activity;Ljava/lang/String;)Lnet/youmi/android/z;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/f;

    invoke-static {v0}, Lnet/youmi/android/f;->a(Lnet/youmi/android/f;)Lnet/youmi/android/bb;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/bb;->c(Lnet/youmi/android/bb;)Lnet/youmi/android/ax;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/youmi/android/ax;->a(I)V

    new-instance v0, Lnet/youmi/android/cx;

    iget-object v1, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/f;

    invoke-static {v1}, Lnet/youmi/android/f;->a(Lnet/youmi/android/f;)Lnet/youmi/android/bb;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/bb;->d(Lnet/youmi/android/bb;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/youmi/android/cx;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/f;

    invoke-static {v1}, Lnet/youmi/android/f;->a(Lnet/youmi/android/f;)Lnet/youmi/android/bb;

    move-result-object v1

    iget-object v1, v1, Lnet/youmi/android/bb;->c:Lnet/youmi/android/bp;

    iget-object v2, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/f;

    invoke-static {v2}, Lnet/youmi/android/f;->a(Lnet/youmi/android/f;)Lnet/youmi/android/bb;

    move-result-object v2

    invoke-static {v2}, Lnet/youmi/android/bb;->c(Lnet/youmi/android/bb;)Lnet/youmi/android/ax;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/ax;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/bp;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/f;

    invoke-static {v1}, Lnet/youmi/android/f;->a(Lnet/youmi/android/f;)Lnet/youmi/android/bb;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/bb;->c(Lnet/youmi/android/bb;)Lnet/youmi/android/ax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/youmi/android/ax;->a(Lnet/youmi/android/z;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/f;

    invoke-static {v0}, Lnet/youmi/android/f;->a(Lnet/youmi/android/f;)Lnet/youmi/android/bb;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/bb;->c(Lnet/youmi/android/bb;)Lnet/youmi/android/ax;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/cl;->b:Lnet/youmi/android/cx;

    invoke-virtual {v1}, Lnet/youmi/android/cx;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/youmi/android/ax;->a(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
