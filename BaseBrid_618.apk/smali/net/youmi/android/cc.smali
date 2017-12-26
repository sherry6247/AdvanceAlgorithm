.class Lnet/youmi/android/cc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lnet/youmi/android/cq;


# direct methods
.method constructor <init>(Lnet/youmi/android/cq;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/cc;->a:Lnet/youmi/android/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/cc;->a:Lnet/youmi/android/cq;

    iget-object v0, v0, Lnet/youmi/android/cq;->f:Lnet/youmi/android/AdActivity;

    invoke-static {v0, p1}, Lnet/youmi/android/ad;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
