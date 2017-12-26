.class Lnet/youmi/android/bj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lnet/youmi/android/ci;


# direct methods
.method constructor <init>(Lnet/youmi/android/ci;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bj;->a:Lnet/youmi/android/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/bj;->a:Lnet/youmi/android/ci;

    iget-boolean v0, v0, Lnet/youmi/android/ci;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/bj;->a:Lnet/youmi/android/ci;

    iget-object v0, v0, Lnet/youmi/android/ci;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/youmi/android/bj;->a:Lnet/youmi/android/ci;

    invoke-virtual {v1}, Lnet/youmi/android/ci;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget-object v0, p0, Lnet/youmi/android/bj;->a:Lnet/youmi/android/ci;

    iget-boolean v0, v0, Lnet/youmi/android/ci;->t:Z

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/bj;->a:Lnet/youmi/android/ci;

    iget-object v0, v0, Lnet/youmi/android/ci;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/youmi/android/bj;->a:Lnet/youmi/android/ci;

    invoke-virtual {v1}, Lnet/youmi/android/ci;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lnet/youmi/android/bj;->a:Lnet/youmi/android/ci;

    iget-object v0, v0, Lnet/youmi/android/ci;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/youmi/android/bj;->a:Lnet/youmi/android/ci;

    invoke-virtual {v1}, Lnet/youmi/android/ci;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
