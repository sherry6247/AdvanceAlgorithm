.class Lnet/youmi/android/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:J

.field private static e:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lnet/youmi/android/n;->a:Z

    const-string v0, ""

    sput-object v0, Lnet/youmi/android/n;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lnet/youmi/android/n;->c:Ljava/lang/String;

    const-wide/16 v0, 0x7530

    sput-wide v0, Lnet/youmi/android/n;->d:J

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lnet/youmi/android/n;->e:D

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(D)V
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sput-wide v0, Lnet/youmi/android/n;->e:D

    return-void
.end method

.method static a(I)V
    .locals 2

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Lnet/youmi/android/n;->d:J

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/n;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static a(Z)V
    .locals 0

    sput-boolean p0, Lnet/youmi/android/n;->a:Z

    return-void
.end method

.method static a()Z
    .locals 1

    sget-boolean v0, Lnet/youmi/android/n;->a:Z

    return v0
.end method

.method static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/youmi/android/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method static b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lnet/youmi/android/n;->c:Ljava/lang/String;

    return-void
.end method

.method static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/youmi/android/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method static d()J
    .locals 2

    sget-wide v0, Lnet/youmi/android/n;->d:J

    return-wide v0
.end method

.method static e()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-wide v1, Lnet/youmi/android/n;->e:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
