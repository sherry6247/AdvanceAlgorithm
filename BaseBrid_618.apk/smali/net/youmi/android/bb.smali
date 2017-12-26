.class Lnet/youmi/android/bb;
.super Landroid/widget/FrameLayout;


# static fields
.field static final a:I

.field static final b:I


# instance fields
.field c:Lnet/youmi/android/bp;

.field private d:Lnet/youmi/android/ax;

.field private e:Lnet/youmi/android/q;

.field private f:Lnet/youmi/android/ce;

.field private g:Lnet/youmi/android/y;

.field private h:Lnet/youmi/android/k;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Z

.field private k:Lnet/youmi/android/ac;

.field private l:I

.field private m:Lnet/youmi/android/AdView;

.field private n:Lnet/youmi/android/ak;

.field private o:Landroid/app/Activity;

.field private p:Lnet/youmi/android/br;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xfa

    const/16 v3, 0xce

    const/16 v2, 0x96

    const/16 v1, 0x87

    invoke-static {v2, v1, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lnet/youmi/android/bb;->a:I

    invoke-static {v2, v1, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lnet/youmi/android/bb;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lnet/youmi/android/ak;Lnet/youmi/android/AdView;III)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/bb;->j:Z

    const/4 v0, 0x3

    iput v0, p0, Lnet/youmi/android/bb;->l:I

    new-instance v0, Lnet/youmi/android/f;

    invoke-direct {v0, p0}, Lnet/youmi/android/f;-><init>(Lnet/youmi/android/bb;)V

    iput-object v0, p0, Lnet/youmi/android/bb;->c:Lnet/youmi/android/bp;

    iput-object p2, p0, Lnet/youmi/android/bb;->n:Lnet/youmi/android/ak;

    iput-object p1, p0, Lnet/youmi/android/bb;->o:Landroid/app/Activity;

    iput-object p3, p0, Lnet/youmi/android/bb;->m:Lnet/youmi/android/AdView;

    invoke-direct {p0, p4, p5, p6}, Lnet/youmi/android/bb;->a(III)V

    invoke-direct {p0}, Lnet/youmi/android/bb;->f()V

    return-void
.end method

.method private a(I)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lnet/youmi/android/bb;->b()V

    invoke-direct {p0}, Lnet/youmi/android/bb;->c()V

    iget-object v0, p0, Lnet/youmi/android/bb;->p:Lnet/youmi/android/br;

    invoke-virtual {v0, p1}, Lnet/youmi/android/br;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(III)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x8

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lnet/youmi/android/bb;->n:Lnet/youmi/android/ak;

    invoke-virtual {v2}, Lnet/youmi/android/ak;->d()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lnet/youmi/android/q;

    iget-object v2, p0, Lnet/youmi/android/bb;->o:Landroid/app/Activity;

    iget-object v3, p0, Lnet/youmi/android/bb;->n:Lnet/youmi/android/ak;

    invoke-direct {v1, p0, v2, v3, p2}, Lnet/youmi/android/q;-><init>(Lnet/youmi/android/bb;Landroid/app/Activity;Lnet/youmi/android/ak;I)V

    iput-object v1, p0, Lnet/youmi/android/bb;->e:Lnet/youmi/android/q;

    iget-object v1, p0, Lnet/youmi/android/bb;->e:Lnet/youmi/android/q;

    invoke-virtual {p0, v1}, Lnet/youmi/android/bb;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lnet/youmi/android/bb;->e:Lnet/youmi/android/q;

    invoke-virtual {v1, v4}, Lnet/youmi/android/q;->setVisibility(I)V

    new-instance v1, Lnet/youmi/android/ce;

    iget-object v2, p0, Lnet/youmi/android/bb;->o:Landroid/app/Activity;

    iget-object v3, p0, Lnet/youmi/android/bb;->n:Lnet/youmi/android/ak;

    invoke-direct {v1, p0, v2, v3, v5}, Lnet/youmi/android/ce;-><init>(Lnet/youmi/android/bb;Landroid/app/Activity;Lnet/youmi/android/ak;Z)V

    iput-object v1, p0, Lnet/youmi/android/bb;->f:Lnet/youmi/android/ce;

    iget-object v1, p0, Lnet/youmi/android/bb;->f:Lnet/youmi/android/ce;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/bb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/youmi/android/bb;->f:Lnet/youmi/android/ce;

    invoke-virtual {v1, v4}, Lnet/youmi/android/ce;->setVisibility(I)V

    new-instance v1, Lnet/youmi/android/y;

    iget-object v2, p0, Lnet/youmi/android/bb;->o:Landroid/app/Activity;

    iget-object v3, p0, Lnet/youmi/android/bb;->n:Lnet/youmi/android/ak;

    invoke-direct {v1, p0, v2, v3, p2}, Lnet/youmi/android/y;-><init>(Lnet/youmi/android/bb;Landroid/app/Activity;Lnet/youmi/android/ak;I)V

    iput-object v1, p0, Lnet/youmi/android/bb;->g:Lnet/youmi/android/y;

    iget-object v1, p0, Lnet/youmi/android/bb;->g:Lnet/youmi/android/y;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/bb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/youmi/android/bb;->g:Lnet/youmi/android/y;

    invoke-virtual {v1, v4}, Lnet/youmi/android/y;->setVisibility(I)V

    new-instance v1, Lnet/youmi/android/k;

    iget-object v2, p0, Lnet/youmi/android/bb;->o:Landroid/app/Activity;

    iget-object v3, p0, Lnet/youmi/android/bb;->n:Lnet/youmi/android/ak;

    invoke-virtual {v3}, Lnet/youmi/android/ak;->d()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lnet/youmi/android/k;-><init>(Lnet/youmi/android/bb;Landroid/app/Activity;I)V

    iput-object v1, p0, Lnet/youmi/android/bb;->h:Lnet/youmi/android/k;

    iget-object v1, p0, Lnet/youmi/android/bb;->h:Lnet/youmi/android/k;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/bb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lnet/youmi/android/bb;->n:Lnet/youmi/android/ak;

    invoke-virtual {v1}, Lnet/youmi/android/ak;->d()I

    move-result v1

    invoke-static {v0, v1, p1, p3}, Lnet/youmi/android/ah;->a(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v5}, Lnet/youmi/android/bb;->setBackgroundColor(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lnet/youmi/android/bb;->i:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lnet/youmi/android/bb;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lnet/youmi/android/bb;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lnet/youmi/android/bb;)V
    .locals 0

    invoke-direct {p0}, Lnet/youmi/android/bb;->d()V

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/bb;I)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/youmi/android/bb;->a(I)V

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/bb;Lnet/youmi/android/ac;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bb;->k:Lnet/youmi/android/ac;

    return-void
.end method

.method static synthetic b(Lnet/youmi/android/bb;)Lnet/youmi/android/AdView;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bb;->m:Lnet/youmi/android/AdView;

    return-object v0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lnet/youmi/android/bb;->p:Lnet/youmi/android/br;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/br;

    iget-object v1, p0, Lnet/youmi/android/bb;->o:Landroid/app/Activity;

    iget-object v2, p0, Lnet/youmi/android/bb;->n:Lnet/youmi/android/ak;

    iget-object v3, p0, Lnet/youmi/android/bb;->m:Lnet/youmi/android/AdView;

    invoke-virtual {v3}, Lnet/youmi/android/AdView;->getAdWidth()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lnet/youmi/android/br;-><init>(Landroid/app/Activity;Lnet/youmi/android/ak;I)V

    iput-object v0, p0, Lnet/youmi/android/bb;->p:Lnet/youmi/android/br;

    iget-object v0, p0, Lnet/youmi/android/bb;->p:Lnet/youmi/android/br;

    invoke-virtual {p0, v0}, Lnet/youmi/android/bb;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lnet/youmi/android/bb;->p:Lnet/youmi/android/br;

    invoke-virtual {v0}, Lnet/youmi/android/br;->bringToFront()V

    iget-object v0, p0, Lnet/youmi/android/bb;->p:Lnet/youmi/android/br;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/br;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lnet/youmi/android/bb;I)V
    .locals 0

    iput p1, p0, Lnet/youmi/android/bb;->l:I

    return-void
.end method

.method static synthetic c(Lnet/youmi/android/bb;)Lnet/youmi/android/ax;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bb;->d:Lnet/youmi/android/ax;

    return-object v0
.end method

.method private c()V
    .locals 2

    invoke-direct {p0}, Lnet/youmi/android/bb;->b()V

    iget-object v0, p0, Lnet/youmi/android/bb;->p:Lnet/youmi/android/br;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/youmi/android/br;->setVisibility(I)V

    return-void
.end method

.method static synthetic d(Lnet/youmi/android/bb;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bb;->o:Landroid/app/Activity;

    return-object v0
.end method

.method private d()V
    .locals 2

    invoke-direct {p0}, Lnet/youmi/android/bb;->b()V

    iget-object v0, p0, Lnet/youmi/android/bb;->p:Lnet/youmi/android/br;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/br;->setVisibility(I)V

    return-void
.end method

.method private e()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnet/youmi/android/bb;->o:Landroid/app/Activity;

    const-class v2, Lnet/youmi/android/AdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Lnet/youmi/android/AdActivity;->a(Landroid/content/Intent;)V

    iget-object v1, p0, Lnet/youmi/android/bb;->d:Lnet/youmi/android/ax;

    invoke-static {v1}, Lnet/youmi/android/aj;->a(Lnet/youmi/android/ax;)V

    iget-object v1, p0, Lnet/youmi/android/bb;->o:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lnet/youmi/android/bb;->m:Lnet/youmi/android/AdView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/youmi/android/AdView;->d:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic e(Lnet/youmi/android/bb;)V
    .locals 0

    invoke-direct {p0}, Lnet/youmi/android/bb;->e()V

    return-void
.end method

.method static synthetic f(Lnet/youmi/android/bb;)Lnet/youmi/android/ak;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bb;->n:Lnet/youmi/android/ak;

    return-object v0
.end method

.method private f()V
    .locals 1

    new-instance v0, Lnet/youmi/android/d;

    invoke-direct {v0, p0}, Lnet/youmi/android/d;-><init>(Lnet/youmi/android/bb;)V

    invoke-virtual {p0, v0}, Lnet/youmi/android/bb;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic g(Lnet/youmi/android/bb;)Lnet/youmi/android/y;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bb;->g:Lnet/youmi/android/y;

    return-object v0
.end method

.method static synthetic h(Lnet/youmi/android/bb;)Lnet/youmi/android/ce;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bb;->f:Lnet/youmi/android/ce;

    return-object v0
.end method

.method static synthetic i(Lnet/youmi/android/bb;)Lnet/youmi/android/q;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bb;->e:Lnet/youmi/android/q;

    return-object v0
.end method

.method static synthetic j(Lnet/youmi/android/bb;)Lnet/youmi/android/k;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bb;->h:Lnet/youmi/android/k;

    return-object v0
.end method

.method static synthetic k(Lnet/youmi/android/bb;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bb;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic l(Lnet/youmi/android/bb;)Lnet/youmi/android/ac;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bb;->k:Lnet/youmi/android/ac;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lnet/youmi/android/bb;->o:Landroid/app/Activity;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/youmi/android/bb;->p:Lnet/youmi/android/br;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/youmi/android/bb;->i:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/youmi/android/bb;->d:Lnet/youmi/android/ax;

    iget-object v0, p0, Lnet/youmi/android/bb;->g:Lnet/youmi/android/y;

    invoke-virtual {v0}, Lnet/youmi/android/y;->b()V

    iget-object v0, p0, Lnet/youmi/android/bb;->e:Lnet/youmi/android/q;

    invoke-virtual {v0}, Lnet/youmi/android/q;->b()V

    iget-object v0, p0, Lnet/youmi/android/bb;->h:Lnet/youmi/android/k;

    invoke-virtual {v0}, Lnet/youmi/android/k;->f()V

    iget-object v0, p0, Lnet/youmi/android/bb;->f:Lnet/youmi/android/ce;

    invoke-virtual {v0}, Lnet/youmi/android/ce;->f()V

    invoke-virtual {p0}, Lnet/youmi/android/bb;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Lnet/youmi/android/ax;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lnet/youmi/android/bb;->d:Lnet/youmi/android/ax;

    invoke-virtual {p0}, Lnet/youmi/android/bb;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/youmi/android/c;

    invoke-direct {v1, p0}, Lnet/youmi/android/c;-><init>(Lnet/youmi/android/bb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/bb;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/bb;->m:Lnet/youmi/android/AdView;

    invoke-virtual {v1}, Lnet/youmi/android/AdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lnet/youmi/android/bb;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/bb;->n:Lnet/youmi/android/ak;

    invoke-virtual {v1}, Lnet/youmi/android/ak;->d()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iput-boolean v1, p0, Lnet/youmi/android/bb;->j:Z

    :goto_0
    iget-boolean v0, p0, Lnet/youmi/android/bb;->j:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/youmi/android/bb;->l:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lnet/youmi/android/bb;->l:I

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Lnet/youmi/android/bb;->setBackgroundColor(I)V

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iput-boolean v2, p0, Lnet/youmi/android/bb;->j:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v1, p0, Lnet/youmi/android/bb;->j:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v2, p0, Lnet/youmi/android/bb;->j:Z

    goto :goto_0

    :cond_1
    sget v0, Lnet/youmi/android/bb;->a:I

    invoke-virtual {p0, v0}, Lnet/youmi/android/bb;->setBackgroundColor(I)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lnet/youmi/android/bb;->l:I

    if-eq v0, v4, :cond_3

    iget v0, p0, Lnet/youmi/android/bb;->l:I

    if-ne v0, v3, :cond_4

    :cond_3
    invoke-virtual {p0, v1}, Lnet/youmi/android/bb;->setBackgroundColor(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lnet/youmi/android/bb;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/youmi/android/bb;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lnet/youmi/android/bb;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Lnet/youmi/android/bb;->setBackgroundColor(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
