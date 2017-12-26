.class Lnet/youmi/android/ck;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/f;


# direct methods
.method constructor <init>(Lnet/youmi/android/f;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ck;->a:Lnet/youmi/android/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ck;->a:Lnet/youmi/android/f;

    invoke-static {v0}, Lnet/youmi/android/f;->a(Lnet/youmi/android/f;)Lnet/youmi/android/bb;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/bb;->a(Lnet/youmi/android/bb;)V

    return-void
.end method
