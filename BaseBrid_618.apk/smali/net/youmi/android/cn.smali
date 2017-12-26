.class Lnet/youmi/android/cn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/f;

.field private final synthetic b:Lnet/youmi/android/cx;


# direct methods
.method constructor <init>(Lnet/youmi/android/f;Lnet/youmi/android/cx;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/cn;->a:Lnet/youmi/android/f;

    iput-object p2, p0, Lnet/youmi/android/cn;->b:Lnet/youmi/android/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/cn;->a:Lnet/youmi/android/f;

    invoke-static {v0}, Lnet/youmi/android/f;->a(Lnet/youmi/android/f;)Lnet/youmi/android/bb;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/cn;->b:Lnet/youmi/android/cx;

    invoke-virtual {v1}, Lnet/youmi/android/cx;->d()I

    move-result v1

    invoke-static {v0, v1}, Lnet/youmi/android/bb;->a(Lnet/youmi/android/bb;I)V

    return-void
.end method
