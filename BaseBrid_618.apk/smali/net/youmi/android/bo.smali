.class Lnet/youmi/android/bo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lnet/youmi/android/ci;


# direct methods
.method constructor <init>(Lnet/youmi/android/ci;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bo;->a:Lnet/youmi/android/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bo;->a:Lnet/youmi/android/ci;

    iget-object v0, v0, Lnet/youmi/android/ci;->w:Lnet/youmi/android/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bo;->a:Lnet/youmi/android/ci;

    iget-object v0, v0, Lnet/youmi/android/ci;->w:Lnet/youmi/android/j;

    invoke-interface {v0}, Lnet/youmi/android/j;->b()V

    :cond_0
    return-void
.end method
