.class public Lcom/zhangling/util/Logs;
.super Ljava/lang/Object;
.source "Logs.java"


# static fields
.field public static tmp_p:I

.field public static type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/zhangling/util/Logs;->type:I

    .line 171
    const/4 v0, 0x1

    sput v0, Lcom/zhangling/util/Logs;->tmp_p:I

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static out()V
    .locals 3

    .prologue
    const-string v2, "========================================"

    .line 26
    sget v0, Lcom/zhangling/util/Logs;->type:I

    if-nez v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    const/4 v0, 0x1

    sget v1, Lcom/zhangling/util/Logs;->type:I

    if-ne v0, v1, :cond_2

    .line 29
    invoke-static {}, Lcom/zhangling/util/Logs;->p()V

    .line 31
    :cond_2
    const/4 v0, 0x2

    sget v1, Lcom/zhangling/util/Logs;->type:I

    if-ne v0, v1, :cond_3

    .line 32
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "========================================"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_3
    const/4 v0, 0x3

    sget v1, Lcom/zhangling/util/Logs;->type:I

    if-ne v0, v1, :cond_0

    .line 35
    invoke-static {}, Lcom/zhangling/util/Logs;->p()V

    .line 36
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "========================================"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static out(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 135
    sget v0, Lcom/zhangling/util/Logs;->type:I

    if-nez v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const/4 v0, 0x1

    sget v1, Lcom/zhangling/util/Logs;->type:I

    if-ne v0, v1, :cond_2

    .line 138
    invoke-static {p0}, Lcom/zhangling/util/Logs;->p(Ljava/lang/Object;)V

    goto :goto_0

    .line 139
    :cond_2
    const/4 v0, 0x2

    sget v1, Lcom/zhangling/util/Logs;->type:I

    if-ne v0, v1, :cond_3

    .line 140
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 141
    :cond_3
    const/4 v0, 0x3

    sget v1, Lcom/zhangling/util/Logs;->type:I

    if-ne v0, v1, :cond_0

    .line 142
    invoke-static {p0}, Lcom/zhangling/util/Logs;->p(Ljava/lang/Object;)V

    .line 143
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static out(Ljava/lang/Integer;)V
    .locals 5
    .param p0, "s"    # Ljava/lang/Integer;

    .prologue
    const-string v4, "===================  "

    const-string v3, " ====================="

    .line 64
    sget v0, Lcom/zhangling/util/Logs;->type:I

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const/4 v0, 0x1

    sget v1, Lcom/zhangling/util/Logs;->type:I

    if-ne v0, v1, :cond_2

    .line 67
    invoke-static {p0}, Lcom/zhangling/util/Logs;->p(Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_2
    const/4 v0, 0x2

    sget v1, Lcom/zhangling/util/Logs;->type:I

    if-ne v0, v1, :cond_3

    .line 69
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "===================  "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ====================="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_3
    const/4 v0, 0x3

    sget v1, Lcom/zhangling/util/Logs;->type:I

    if-ne v0, v1, :cond_0

    .line 71
    invoke-static {p0}, Lcom/zhangling/util/Logs;->p(Ljava/lang/Object;)V

    .line 72
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "===================  "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ====================="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static out(Ljava/lang/String;)V
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v3, "====================  "

    const-string v2, "  ===================="

    .line 46
    sget v0, Lcom/zhangling/util/Logs;->type:I

    if-nez v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const/4 v0, 0x1

    sget v1, Lcom/zhangling/util/Logs;->type:I

    if-ne v0, v1, :cond_2

    .line 49
    invoke-static {p0}, Lcom/zhangling/util/Logs;->p(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x2

    sget v1, Lcom/zhangling/util/Logs;->type:I

    if-ne v0, v1, :cond_3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "====================  "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  ===================="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_3
    const/4 v0, 0x3

    sget v1, Lcom/zhangling/util/Logs;->type:I

    if-ne v0, v1, :cond_0

    .line 53
    invoke-static {p0}, Lcom/zhangling/util/Logs;->p(Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "====================  "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  ===================="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static out(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 157
    sget v0, Lcom/zhangling/util/Logs;->type:I

    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const/4 v0, 0x1

    sget v1, Lcom/zhangling/util/Logs;->type:I

    if-ne v0, v1, :cond_2

    .line 160
    invoke-static {p0}, Lcom/zhangling/util/Logs;->p(Ljava/lang/String;)V

    .line 161
    invoke-static {p1}, Lcom/zhangling/util/Logs;->p(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_2
    const/4 v0, 0x2

    sget v1, Lcom/zhangling/util/Logs;->type:I

    if-ne v0, v1, :cond_3

    .line 163
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_3
    const/4 v0, 0x3

    sget v1, Lcom/zhangling/util/Logs;->type:I

    if-ne v0, v1, :cond_0

    .line 165
    invoke-static {p0}, Lcom/zhangling/util/Logs;->p(Ljava/lang/String;)V

    .line 166
    invoke-static {p1}, Lcom/zhangling/util/Logs;->p(Ljava/lang/String;)V

    .line 167
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static p()V
    .locals 2

    .prologue
    .line 80
    sget v0, Lcom/zhangling/util/Logs;->type:I

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static p(I)V
    .locals 1
    .param p0, "s"    # I

    .prologue
    .line 124
    sget v0, Lcom/zhangling/util/Logs;->type:I

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(I)V

    goto :goto_0
.end method

.method public static p(Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/Boolean;

    .prologue
    .line 113
    sget v0, Lcom/zhangling/util/Logs;->type:I

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static p(Ljava/lang/Object;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/Object;

    .prologue
    .line 102
    sget v0, Lcom/zhangling/util/Logs;->type:I

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static p(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 91
    sget v0, Lcom/zhangling/util/Logs;->type:I

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static pShow()V
    .locals 3

    .prologue
    .line 180
    sget v0, Lcom/zhangling/util/Logs;->type:I

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x1

    sget v1, Lcom/zhangling/util/Logs;->tmp_p:I

    if-ne v0, v1, :cond_1

    .line 183
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ">>> start <<<"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget v1, Lcom/zhangling/util/Logs;->tmp_p:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/zhangling/util/Logs;->tmp_p:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    goto :goto_0
.end method

.method public static pShowStart(I)V
    .locals 1
    .param p0, "start"    # I

    .prologue
    .line 174
    sget v0, Lcom/zhangling/util/Logs;->type:I

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    sput p0, Lcom/zhangling/util/Logs;->tmp_p:I

    goto :goto_0
.end method
