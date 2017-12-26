.class Lnet/youmi/android/r;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/view/animation/Animation;

.field private static b:Landroid/view/animation/Animation;

.field private static c:Landroid/view/animation/Animation;

.field private static d:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Landroid/view/animation/Animation;
    .locals 6

    const-wide/16 v4, 0x12c

    const/4 v3, 0x0

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-int v2, p0

    int-to-float v2, v2

    invoke-direct {v1, v3, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method static a(Lnet/youmi/android/ak;)Landroid/view/animation/Animation;
    .locals 1

    sget-object v0, Lnet/youmi/android/r;->c:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/youmi/android/ak;->d()I

    move-result v0

    invoke-static {v0}, Lnet/youmi/android/r;->a(I)Landroid/view/animation/Animation;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/r;->c:Landroid/view/animation/Animation;

    :cond_0
    sget-object v0, Lnet/youmi/android/r;->c:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private static b(I)Landroid/view/animation/Animation;
    .locals 6

    const-wide/16 v4, 0x12c

    const/4 v3, 0x0

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, p0

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method static b(Lnet/youmi/android/ak;)Landroid/view/animation/Animation;
    .locals 1

    sget-object v0, Lnet/youmi/android/r;->d:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/youmi/android/ak;->d()I

    move-result v0

    invoke-static {v0}, Lnet/youmi/android/r;->b(I)Landroid/view/animation/Animation;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/r;->d:Landroid/view/animation/Animation;

    :cond_0
    sget-object v0, Lnet/youmi/android/r;->d:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private static c(I)Landroid/view/animation/Animation;
    .locals 8

    const-wide/16 v6, 0x12c

    const/4 v5, 0x0

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x43b40000    # 360.0f

    div-int/lit8 v3, p0, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p0, 0x2

    int-to-float v4, v4

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method static c(Lnet/youmi/android/ak;)Landroid/view/animation/Animation;
    .locals 1

    sget-object v0, Lnet/youmi/android/r;->a:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/youmi/android/ak;->e()I

    move-result v0

    invoke-static {v0}, Lnet/youmi/android/r;->c(I)Landroid/view/animation/Animation;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/r;->a:Landroid/view/animation/Animation;

    :cond_0
    sget-object v0, Lnet/youmi/android/r;->a:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private static d(I)Landroid/view/animation/Animation;
    .locals 8

    const-wide/16 v6, 0x12c

    const/4 v5, 0x0

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/high16 v2, -0x3c4c0000    # -360.0f

    div-int/lit8 v3, p0, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p0, 0x2

    int-to-float v4, v4

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method static d(Lnet/youmi/android/ak;)Landroid/view/animation/Animation;
    .locals 1

    sget-object v0, Lnet/youmi/android/r;->b:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/youmi/android/ak;->e()I

    move-result v0

    invoke-static {v0}, Lnet/youmi/android/r;->d(I)Landroid/view/animation/Animation;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/r;->b:Landroid/view/animation/Animation;

    :cond_0
    sget-object v0, Lnet/youmi/android/r;->b:Landroid/view/animation/Animation;

    return-object v0
.end method
