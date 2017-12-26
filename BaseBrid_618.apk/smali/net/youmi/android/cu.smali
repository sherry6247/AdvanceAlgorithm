.class Lnet/youmi/android/cu;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Z

.field c:Ljava/lang/Thread;

.field d:Lnet/youmi/android/p;

.field e:I

.field f:I

.field g:I

.field h:I


# direct methods
.method constructor <init>(Lnet/youmi/android/p;I)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lnet/youmi/android/cu;->a:Z

    iput-boolean v0, p0, Lnet/youmi/android/cu;->b:Z

    iput v1, p0, Lnet/youmi/android/cu;->e:I

    iput v1, p0, Lnet/youmi/android/cu;->f:I

    iput v0, p0, Lnet/youmi/android/cu;->g:I

    iput v0, p0, Lnet/youmi/android/cu;->h:I

    :try_start_0
    iput p2, p0, Lnet/youmi/android/cu;->e:I

    iput-object p1, p0, Lnet/youmi/android/cu;->d:Lnet/youmi/android/p;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/youmi/android/i;

    invoke-direct {v1, p0}, Lnet/youmi/android/i;-><init>(Lnet/youmi/android/cu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/youmi/android/cu;->c:Ljava/lang/Thread;

    invoke-direct {p0}, Lnet/youmi/android/cu;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lnet/youmi/android/cu;->a:Z

    iget-object v0, p0, Lnet/youmi/android/cu;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/cu;->a:Z

    return-void
.end method
