.class Lnet/youmi/android/bm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lnet/youmi/android/ci;


# direct methods
.method constructor <init>(Lnet/youmi/android/ci;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bm;->a:Lnet/youmi/android/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/bm;->a:Lnet/youmi/android/ci;

    iget-object v0, v0, Lnet/youmi/android/ci;->w:Lnet/youmi/android/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bm;->a:Lnet/youmi/android/ci;

    iget-object v0, v0, Lnet/youmi/android/ci;->w:Lnet/youmi/android/j;

    invoke-interface {v0}, Lnet/youmi/android/j;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
