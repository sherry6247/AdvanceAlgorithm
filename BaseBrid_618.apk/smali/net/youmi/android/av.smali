.class Lnet/youmi/android/av;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnet/youmi/android/av;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lnet/youmi/android/av;->b:Z

    iput-boolean v1, p0, Lnet/youmi/android/av;->c:Z

    iput v1, p0, Lnet/youmi/android/av;->d:I

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/av;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lnet/youmi/android/av;->d:I

    return-void

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/av;->a:Ljava/lang/String;

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/av;->e:Ljava/lang/String;

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/av;->e:Ljava/lang/String;

    return-void
.end method

.method c()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/av;->d:I

    return v0
.end method
