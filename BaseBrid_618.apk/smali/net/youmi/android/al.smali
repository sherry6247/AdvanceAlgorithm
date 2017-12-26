.class Lnet/youmi/android/al;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lnet/youmi/android/bv;

.field d:Lnet/youmi/android/cv;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/youmi/android/cv;

    invoke-direct {v0, p0}, Lnet/youmi/android/cv;-><init>(Lnet/youmi/android/al;)V

    iput-object v0, p0, Lnet/youmi/android/al;->d:Lnet/youmi/android/cv;

    new-instance v0, Lnet/youmi/android/bv;

    invoke-direct {v0, p0}, Lnet/youmi/android/bv;-><init>(Lnet/youmi/android/al;)V

    iput-object v0, p0, Lnet/youmi/android/al;->c:Lnet/youmi/android/bv;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "style=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/youmi/android/al;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/youmi/android/al;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lnet/youmi/android/al;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "background-color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/youmi/android/al;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lnet/youmi/android/al;->d:Lnet/youmi/android/cv;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/youmi/android/al;->d:Lnet/youmi/android/cv;

    iget-object v1, v1, Lnet/youmi/android/cv;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "font-size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/youmi/android/al;->d:Lnet/youmi/android/cv;

    iget-object v1, v1, Lnet/youmi/android/cv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lnet/youmi/android/al;->d:Lnet/youmi/android/cv;

    iget-object v1, v1, Lnet/youmi/android/cv;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "font-weight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/youmi/android/al;->d:Lnet/youmi/android/cv;

    iget-object v1, v1, Lnet/youmi/android/cv;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lnet/youmi/android/al;->c:Lnet/youmi/android/bv;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lnet/youmi/android/al;->c:Lnet/youmi/android/bv;

    iget-object v1, v1, Lnet/youmi/android/bv;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "border:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/youmi/android/al;->c:Lnet/youmi/android/bv;

    iget-object v1, v1, Lnet/youmi/android/bv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lnet/youmi/android/al;->c:Lnet/youmi/android/bv;

    iget-object v1, v1, Lnet/youmi/android/bv;->b:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "border-bottom-width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/youmi/android/al;->c:Lnet/youmi/android/bv;

    iget-object v1, v1, Lnet/youmi/android/bv;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lnet/youmi/android/al;->c:Lnet/youmi/android/bv;

    iget-object v1, v1, Lnet/youmi/android/bv;->c:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "border-bottom-style:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/youmi/android/al;->c:Lnet/youmi/android/bv;

    iget-object v1, v1, Lnet/youmi/android/bv;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lnet/youmi/android/al;->c:Lnet/youmi/android/bv;

    iget-object v1, v1, Lnet/youmi/android/bv;->d:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, "border-bottom-color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/youmi/android/al;->c:Lnet/youmi/android/bv;

    iget-object v1, v1, Lnet/youmi/android/bv;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
