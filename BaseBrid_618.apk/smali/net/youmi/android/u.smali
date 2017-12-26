.class Lnet/youmi/android/u;
.super Ljava/lang/Object;


# static fields
.field static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/youmi/android/u;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0xff00
        0xff0000
        -0x1000000
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final a(BII)I
    .locals 2

    const/16 v1, 0x8

    add-int v0, p1, p2

    if-le v0, v1, :cond_0

    move v0, p0

    :goto_0
    return v0

    :cond_0
    sub-int v0, v1, p1

    sub-int/2addr v0, p2

    shl-int v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v1, p2

    ushr-int/2addr v0, v1

    goto :goto_0
.end method

.method static final a([BII)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    if-lt v0, p2, :cond_0

    return v2

    :cond_0
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    shl-int/2addr v3, v1

    sget-object v4, Lnet/youmi/android/u;->a:[I

    aget v4, v4, v0

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
