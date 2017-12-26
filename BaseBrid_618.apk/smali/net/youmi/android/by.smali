.class Lnet/youmi/android/by;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lnet/youmi/android/by;->a:I

    iput v0, p0, Lnet/youmi/android/by;->b:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/by;->a:I

    return v0
.end method

.method b()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/by;->b:I

    return v0
.end method
