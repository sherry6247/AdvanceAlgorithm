.class Lnet/youmi/android/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/AdView;


# direct methods
.method constructor <init>(Lnet/youmi/android/AdView;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/am;->a:Lnet/youmi/android/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-wide/16 v4, 0x2710

    :goto_0
    iget-object v0, p0, Lnet/youmi/android/am;->a:Lnet/youmi/android/AdView;

    iget-boolean v0, v0, Lnet/youmi/android/AdView;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x3a98

    :try_start_0
    iget-object v2, p0, Lnet/youmi/android/am;->a:Lnet/youmi/android/AdView;

    iget-boolean v2, v2, Lnet/youmi/android/AdView;->c:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lnet/youmi/android/am;->a:Lnet/youmi/android/AdView;

    iget-boolean v2, v2, Lnet/youmi/android/AdView;->d:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lnet/youmi/android/am;->a:Lnet/youmi/android/AdView;

    invoke-virtual {v2}, Lnet/youmi/android/AdView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lnet/youmi/android/am;->a:Lnet/youmi/android/AdView;

    invoke-static {v2}, Lnet/youmi/android/AdView;->a(Lnet/youmi/android/AdView;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lnet/youmi/android/am;->a:Lnet/youmi/android/AdView;

    invoke-static {v2, v3}, Lnet/youmi/android/a;->c(Landroid/app/Activity;Lnet/youmi/android/AdView;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    :goto_1
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move-wide v0, v4

    goto :goto_1

    :cond_2
    move-wide v0, v4

    goto :goto_1

    :cond_3
    move-wide v0, v4

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1
.end method
