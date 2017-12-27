.class public LDaemon/Base/Tools;
.super Ljava/lang/Object;
.source "Tools.java"


# static fields
.field public static string_all_num:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput v0, LDaemon/Base/Tools;->string_all_num:I

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChangeAnnexName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "Annex_name"    # Ljava/lang/String;

    .prologue
    .line 188
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 189
    .local v0, "Annex":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "Annex_name_temp":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 198
    :goto_1
    return-object p0

    .line 191
    :cond_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[\u4e00-\u9fa5]+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 193
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 195
    goto :goto_1

    .line 190
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static parseIndexString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 13
    if-nez p1, :cond_0

    .line 14
    const-string v4, ""

    .line 29
    :goto_0
    return-object v4

    .line 16
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    .local v2, "start":Ljava/lang/String;
    const-string v0, "\""

    .line 18
    .local v0, "end":Ljava/lang/String;
    const-string v1, ""

    .line 19
    .local v1, "r":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 21
    .local v3, "start_value":I
    if-eq v3, v6, :cond_1

    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 23
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 25
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    .line 25
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v4, v1

    .line 29
    goto :goto_0

    .line 27
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static parsePackage(Ljava/lang/String;[Ljava/lang/String;II)[Ljava/lang/String;
    .locals 11
    .param p0, "end_text"    # Ljava/lang/String;
    .param p1, "text"    # [Ljava/lang/String;
    .param p2, "allnum"    # I
    .param p3, "itemnum"    # I

    .prologue
    const-string v10, ","

    .line 74
    const/4 v7, 0x0

    sput v7, LDaemon/Base/Tools;->string_all_num:I

    .line 75
    const-string v4, "<widget>"

    .line 76
    .local v4, "parser_one":Ljava/lang/String;
    const-string v5, "</domreg>"

    .line 77
    .local v5, "parser_one_end":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 78
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 77
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "temp":Ljava/lang/String;
    const-string v5, "</widget>"

    .line 80
    :cond_0
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 105
    :goto_0
    return-object p1

    .line 81
    :cond_1
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 82
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 83
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    .line 81
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "cut_txt":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    if-nez v7, :cond_2

    .line 86
    const-string v6, ""

    .line 87
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 90
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 91
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    const-string v8, ","

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 90
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 93
    const/4 v3, 0x0

    .line 94
    .local v3, "loaction":I
    const/4 v1, 0x0

    .line 95
    .local v1, "here":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, p3, :cond_3

    .line 101
    sget v7, LDaemon/Base/Tools;->string_all_num:I

    add-int/lit8 v7, v7, 0x1

    sput v7, LDaemon/Base/Tools;->string_all_num:I

    .line 102
    sget v7, LDaemon/Base/Tools;->string_all_num:I

    if-lt v7, p2, :cond_0

    goto :goto_0

    .line 96
    :cond_3
    const-string v7, ","

    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 97
    sget v7, LDaemon/Base/Tools;->string_all_num:I

    mul-int/2addr v7, p3

    add-int/2addr v7, v2

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, p1, v7

    .line 99
    add-int/lit8 v3, v1, 0x1

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static parsePackageItem(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "end_text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "LDaemon/Protocol/AdBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "adwidget":Ljava/util/ArrayList;, "Ljava/util/ArrayList<LDaemon/Protocol/AdBase;>;"
    const-string v1, "<advertising priority="

    .line 115
    .local v1, "parser_one":Ljava/lang/String;
    const-string v2, "</agent>"

    .line 116
    .local v2, "parser_one_end":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 117
    const/4 p0, 0x0

    move-object v0, v2

    .end local v2    # "parser_one_end":Ljava/lang/String;
    .local v0, "parser_one_end":Ljava/lang/String;
    move-object v8, v1

    .end local v1    # "parser_one":Ljava/lang/String;
    .local v8, "parser_one":Ljava/lang/String;
    move-object v1, p0

    move-object p0, v8

    .line 183
    .end local v8    # "parser_one":Ljava/lang/String;
    .local p0, "parser_one":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 118
    .local v0, "adwidget":Ljava/util/ArrayList;, "Ljava/util/ArrayList<LDaemon/Protocol/AdBase;>;"
    .restart local v1    # "parser_one":Ljava/lang/String;
    .restart local v2    # "parser_one_end":Ljava/lang/String;
    .local p0, "end_text":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 119
    .end local v1    # "parser_one":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 118
    .end local v2    # "parser_one_end":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 120
    .local p0, "temp":Ljava/lang/String;
    const-string v2, "<advertising priority="

    .line 121
    .local v2, "parser_one":Ljava/lang/String;
    const-string v3, "</advertising>"

    .line 122
    .local v3, "parser_one_end":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    :goto_2
    move-object p0, v2

    .end local v2    # "parser_one":Ljava/lang/String;
    .local p0, "parser_one":Ljava/lang/String;
    move-object v1, v0

    move-object v0, v3

    .line 183
    .end local v3    # "parser_one_end":Ljava/lang/String;
    .local v0, "parser_one_end":Ljava/lang/String;
    goto :goto_0

    .line 123
    .local v0, "adwidget":Ljava/util/ArrayList;, "Ljava/util/ArrayList<LDaemon/Protocol/AdBase;>;"
    .restart local v2    # "parser_one":Ljava/lang/String;
    .restart local v3    # "parser_one_end":Ljava/lang/String;
    .local p0, "temp":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 124
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 125
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 123
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "cut_txt":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    if-nez v4, :cond_2

    .line 129
    const-string p0, ""

    .line 130
    goto :goto_2

    .line 132
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "temp":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    const-string p0, "\n\r"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "temp":Ljava/lang/String;
    new-instance p0, LDaemon/Protocol/AdBase;

    invoke-direct {p0}, LDaemon/Protocol/AdBase;-><init>()V

    .line 135
    .local p0, "adbase":LDaemon/Protocol/AdBase;
    const-string v5, "id"

    invoke-static {v1, v5}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, LDaemon/Protocol/AdBase;->id:I

    .line 136
    const-string v5, "strategy"

    invoke-static {v1, v5}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 138
    const-string v5, "strategy"

    .line 137
    invoke-static {v1, v5}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, LDaemon/Protocol/AdBase;->strategy:I

    .line 139
    :cond_3
    const-string v5, "title"

    invoke-static {v1, v5}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->title:Ljava/lang/String;

    .line 140
    iget-object v5, p0, LDaemon/Protocol/AdBase;->title:Ljava/lang/String;

    const-string v6, "&#xd;"

    const-string v7, ""

    invoke-static {v5, v6, v7}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->title:Ljava/lang/String;

    .line 141
    iget-object v5, p0, LDaemon/Protocol/AdBase;->title:Ljava/lang/String;

    const-string v6, "&quot;"

    const-string v7, "\""

    invoke-static {v5, v6, v7}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->title:Ljava/lang/String;

    .line 142
    iget-object v5, p0, LDaemon/Protocol/AdBase;->title:Ljava/lang/String;

    const-string v6, "&#039;"

    const-string v7, "\'"

    invoke-static {v5, v6, v7}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->title:Ljava/lang/String;

    .line 143
    iget-object v5, p0, LDaemon/Protocol/AdBase;->title:Ljava/lang/String;

    const-string v6, "&lt;"

    const-string v7, "<"

    invoke-static {v5, v6, v7}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->title:Ljava/lang/String;

    .line 144
    iget-object v5, p0, LDaemon/Protocol/AdBase;->title:Ljava/lang/String;

    const-string v6, "&gt;"

    const-string v7, ">"

    invoke-static {v5, v6, v7}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->title:Ljava/lang/String;

    .line 145
    iget-object v5, p0, LDaemon/Protocol/AdBase;->title:Ljava/lang/String;

    const-string v6, "&amp;"

    const-string v7, "&"

    invoke-static {v5, v6, v7}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->title:Ljava/lang/String;

    .line 146
    const-string v5, "content"

    invoke-static {v1, v5}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->content:Ljava/lang/String;

    .line 147
    iget-object v5, p0, LDaemon/Protocol/AdBase;->content:Ljava/lang/String;

    const-string v6, "&#xd;"

    const-string v7, ""

    invoke-static {v5, v6, v7}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->content:Ljava/lang/String;

    .line 148
    iget-object v5, p0, LDaemon/Protocol/AdBase;->content:Ljava/lang/String;

    const-string v6, "&quot;"

    const-string v7, "\""

    invoke-static {v5, v6, v7}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->content:Ljava/lang/String;

    .line 149
    iget-object v5, p0, LDaemon/Protocol/AdBase;->content:Ljava/lang/String;

    const-string v6, "&#039;"

    const-string v7, "\'"

    invoke-static {v5, v6, v7}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->content:Ljava/lang/String;

    .line 150
    iget-object v5, p0, LDaemon/Protocol/AdBase;->content:Ljava/lang/String;

    const-string v6, "&lt;"

    const-string v7, "<"

    invoke-static {v5, v6, v7}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->content:Ljava/lang/String;

    .line 151
    iget-object v5, p0, LDaemon/Protocol/AdBase;->content:Ljava/lang/String;

    const-string v6, "&gt;"

    const-string v7, ">"

    invoke-static {v5, v6, v7}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->content:Ljava/lang/String;

    .line 152
    iget-object v5, p0, LDaemon/Protocol/AdBase;->content:Ljava/lang/String;

    const-string v6, "&amp;"

    const-string v7, "&"

    invoke-static {v5, v6, v7}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->content:Ljava/lang/String;

    .line 153
    const-string v5, "url"

    invoke-static {v1, v5}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->url:Ljava/lang/String;

    .line 154
    iget-object v5, p0, LDaemon/Protocol/AdBase;->url:Ljava/lang/String;

    if-nez v5, :cond_4

    const-string v5, "filename"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 155
    const-string v5, "filename"

    invoke-static {v1, v5}, LDaemon/Base/Tools;->parseIndexString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->filename:Ljava/lang/String;

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<url filename=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    iget-object v6, p0, LDaemon/Protocol/AdBase;->filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "<url>"

    .line 156
    invoke-static {v1, v5, v6}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    const-string v5, "url"

    invoke-static {v1, v5}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->url:Ljava/lang/String;

    .line 159
    iget-object v5, p0, LDaemon/Protocol/AdBase;->filename:Ljava/lang/String;

    invoke-static {v5}, LDaemon/Base/Tools;->getChangeAnnexName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->filename:Ljava/lang/String;

    .line 160
    iget-object v5, p0, LDaemon/Protocol/AdBase;->url:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, LDaemon/Action/Action;->host:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, LDaemon/Protocol/AdBase;->url:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->url:Ljava/lang/String;

    .line 164
    :goto_3
    iget-object v5, p0, LDaemon/Protocol/AdBase;->url:Ljava/lang/String;

    const-string v6, " "

    const-string v7, ""

    invoke-static {v5, v6, v7}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->url:Ljava/lang/String;

    .line 165
    iget-object v5, p0, LDaemon/Protocol/AdBase;->url:Ljava/lang/String;

    const-string v6, "\u3000"

    const-string v7, ""

    invoke-static {v5, v6, v7}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->url:Ljava/lang/String;

    .line 166
    iget-object v5, p0, LDaemon/Protocol/AdBase;->url:Ljava/lang/String;

    const-string v6, "&amp;"

    const-string v7, "&"

    invoke-static {v5, v6, v7}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->url:Ljava/lang/String;

    .line 167
    iget-object v5, p0, LDaemon/Protocol/AdBase;->url:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-le v5, v6, :cond_4

    .line 168
    iget-object v5, p0, LDaemon/Protocol/AdBase;->url:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "urlhost":Ljava/lang/String;
    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .end local v5    # "urlhost":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, LDaemon/Protocol/AdBase;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->url:Ljava/lang/String;

    .line 173
    :cond_4
    const-string v5, "version"

    invoke-static {v1, v5}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "version":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 175
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .end local v5    # "version":Ljava/lang/String;
    iput v5, p0, LDaemon/Protocol/AdBase;->version:I

    .line 177
    :cond_5
    const-string v5, "show_time"

    .line 176
    invoke-static {v1, v5}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, LDaemon/Protocol/AdBase;->show_time:I

    .line 178
    const-string v5, "sp_number"

    invoke-static {v1, v5}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->sp_number:Ljava/lang/String;

    .line 179
    const-string v5, "type"

    invoke-static {v1, v5}, LDaemon/Base/Tools;->parseIndexString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->type:Ljava/lang/String;

    .line 180
    const-string v5, "priority"

    invoke-static {v1, v5}, LDaemon/Base/Tools;->parseIndexString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "cut_txt":Ljava/lang/String;
    iput-object v1, p0, LDaemon/Protocol/AdBase;->priority:Ljava/lang/String;

    .line 181
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p0, v4

    .end local v4    # "temp":Ljava/lang/String;
    .local p0, "temp":Ljava/lang/String;
    goto/16 :goto_1

    .line 163
    .restart local v1    # "cut_txt":Ljava/lang/String;
    .restart local v4    # "temp":Ljava/lang/String;
    .local p0, "adbase":LDaemon/Protocol/AdBase;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, LDaemon/Action/Action;->host:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, LDaemon/Protocol/AdBase;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/AdBase;->url:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public static parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    const-string v6, ">"

    .line 34
    if-nez p1, :cond_0

    .line 35
    const-string v3, ""

    .line 48
    :goto_0
    return-object v3

    .line 37
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "start":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "</"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "end":Ljava/lang/String;
    const-string v1, ""

    .line 41
    .local v1, "r":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 42
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 44
    :cond_2
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 44
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v3, v1

    .line 48
    goto :goto_0

    .line 46
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "temp"    # Ljava/lang/String;
    .param p1, "start_name"    # Ljava/lang/String;
    .param p2, "End_name"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 68
    :goto_1
    return-object p0

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 61
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-virtual {p2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
