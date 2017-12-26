.class Lnet/youmi/android/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:I


# direct methods
.method constructor <init>(Landroid/app/Activity;ILjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/x;->a:Landroid/app/Activity;

    iput p2, p0, Lnet/youmi/android/x;->b:I

    iput-object p3, p0, Lnet/youmi/android/x;->c:Ljava/lang/String;

    iput p4, p0, Lnet/youmi/android/x;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/x;->a:Landroid/app/Activity;

    iget v1, p0, Lnet/youmi/android/x;->b:I

    iget-object v2, p0, Lnet/youmi/android/x;->c:Ljava/lang/String;

    iget v3, p0, Lnet/youmi/android/x;->d:I

    invoke-static {v0, v1, v2, v3}, Lnet/youmi/android/a;->c(Landroid/app/Activity;ILjava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
