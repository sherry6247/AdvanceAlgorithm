.class Lnet/youmi/android/ba;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lnet/youmi/android/cp;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/app/Activity;

.field private d:Lnet/youmi/android/ak;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lnet/youmi/android/ak;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lnet/youmi/android/ba;->b:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lnet/youmi/android/ba;->c:Landroid/app/Activity;

    iput-object p2, p0, Lnet/youmi/android/ba;->d:Lnet/youmi/android/ak;

    invoke-direct {p0, p1}, Lnet/youmi/android/ba;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/ba;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lnet/youmi/android/ba;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/youmi/android/ba;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lnet/youmi/android/ap;->a()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lnet/youmi/android/ba;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/ba;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ba;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
