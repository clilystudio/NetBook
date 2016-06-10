.class public final Lcom/mob/tools/b/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/text/CharacterIterator;

.field private b:C

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 6

    .prologue
    const/16 v5, 0x2d

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 0
    const-string v2, "true"

    invoke-direct {p0, v2}, Lcom/mob/tools/b/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "false"

    invoke-direct {p0, v2}, Lcom/mob/tools/b/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-direct {p0, v2}, Lcom/mob/tools/b/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/mob/tools/b/f;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2000
    iget-char v2, p0, Lcom/mob/tools/b/f;->b:C

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_2

    iget-char v2, p0, Lcom/mob/tools/b/f;->b:C

    if-eq v2, v5, :cond_2

    move v2, v0

    .line 0
    :goto_0
    if-nez v2, :cond_0

    .line 3000
    const/16 v2, 0x7b

    const/16 v3, 0x7d

    invoke-direct {p0, v2, v3, v1}, Lcom/mob/tools/b/f;->a(CCZ)Z

    move-result v2

    .line 0
    if-nez v2, :cond_0

    .line 4000
    const/16 v2, 0x5b

    const/16 v3, 0x5d

    invoke-direct {p0, v2, v3, v0}, Lcom/mob/tools/b/f;->a(CCZ)Z

    move-result v2

    .line 0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    .line 2000
    :cond_2
    iget v2, p0, Lcom/mob/tools/b/f;->c:I

    iget-char v3, p0, Lcom/mob/tools/b/f;->b:C

    if-ne v3, v5, :cond_3

    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    :cond_3
    iget-char v3, p0, Lcom/mob/tools/b/f;->b:C

    const/16 v4, 0x30

    if-ne v3, v4, :cond_5

    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    :cond_4
    iget-char v3, p0, Lcom/mob/tools/b/f;->b:C

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_8

    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    iget-char v3, p0, Lcom/mob/tools/b/f;->b:C

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_1
    iget-char v3, p0, Lcom/mob/tools/b/f;->b:C

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    goto :goto_1

    :cond_5
    iget-char v3, p0, Lcom/mob/tools/b/f;->b:C

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_2
    iget-char v3, p0, Lcom/mob/tools/b/f;->b:C

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    goto :goto_2

    :cond_6
    const-string v3, "number"

    invoke-static {v3, v2}, Lcom/mob/tools/b/f;->a(Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0

    :cond_7
    const-string v3, "number"

    invoke-static {v3, v2}, Lcom/mob/tools/b/f;->a(Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0

    :cond_8
    iget-char v3, p0, Lcom/mob/tools/b/f;->b:C

    const/16 v4, 0x65

    if-eq v3, v4, :cond_9

    iget-char v3, p0, Lcom/mob/tools/b/f;->b:C

    const/16 v4, 0x45

    if-ne v3, v4, :cond_d

    :cond_9
    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    iget-char v3, p0, Lcom/mob/tools/b/f;->b:C

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_a

    iget-char v3, p0, Lcom/mob/tools/b/f;->b:C

    if-ne v3, v5, :cond_b

    :cond_a
    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    :cond_b
    iget-char v3, p0, Lcom/mob/tools/b/f;->b:C

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_c

    :goto_3
    iget-char v2, p0, Lcom/mob/tools/b/f;->b:C

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    goto :goto_3

    :cond_c
    const-string v3, "number"

    invoke-static {v3, v2}, Lcom/mob/tools/b/f;->a(Ljava/lang/String;I)Z

    move-result v2

    goto/16 :goto_0

    :cond_d
    move v2, v1

    goto/16 :goto_0
.end method

.method private a(CCZ)Z
    .locals 3

    const/4 v0, 0x1

    iget-char v1, p0, Lcom/mob/tools/b/f;->b:C

    if-eq v1, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    invoke-direct {p0}, Lcom/mob/tools/b/f;->e()V

    iget-char v1, p0, Lcom/mob/tools/b/f;->b:C

    if-ne v1, p2, :cond_3

    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    invoke-direct {p0}, Lcom/mob/tools/b/f;->e()V

    :cond_2
    invoke-direct {p0}, Lcom/mob/tools/b/f;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/mob/tools/b/f;->e()V

    iget-char v1, p0, Lcom/mob/tools/b/f;->b:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_5

    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    invoke-direct {p0}, Lcom/mob/tools/b/f;->e()V

    :cond_3
    if-eqz p3, :cond_2

    iget v1, p0, Lcom/mob/tools/b/f;->c:I

    invoke-direct {p0}, Lcom/mob/tools/b/f;->b()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v0, "string"

    invoke-static {v0, v1}, Lcom/mob/tools/b/f;->a(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/mob/tools/b/f;->e()V

    iget-char v1, p0, Lcom/mob/tools/b/f;->b:C

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1

    const-string v0, "colon"

    iget v1, p0, Lcom/mob/tools/b/f;->c:I

    invoke-static {v0, v1}, Lcom/mob/tools/b/f;->a(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-char v1, p0, Lcom/mob/tools/b/f;->b:C

    if-eq v1, p2, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "comma or "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/mob/tools/b/f;->c:I

    invoke-static {v0, v1}, Lcom/mob/tools/b/f;->a(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_6
    const-string v0, "value"

    iget v1, p0, Lcom/mob/tools/b/f;->c:I

    invoke-static {v0, v1}, Lcom/mob/tools/b/f;->a(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "type: %s, col: %s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return v5
.end method

.method private b()Z
    .locals 7

    .prologue
    const/16 v6, 0x22

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 0
    iget-char v0, p0, Lcom/mob/tools/b/f;->b:C

    if-eq v0, v6, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v3, p0, Lcom/mob/tools/b/f;->c:I

    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    move v0, v1

    :goto_1
    iget-char v4, p0, Lcom/mob/tools/b/f;->b:C

    const v5, 0xffff

    if-eq v4, v5, :cond_8

    if-nez v0, :cond_3

    iget-char v4, p0, Lcom/mob/tools/b/f;->b:C

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_3

    move v0, v2

    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_7

    .line 5000
    iget v0, p0, Lcom/mob/tools/b/f;->c:I

    add-int/lit8 v0, v0, -0x1

    const-string v4, " \\\"/bfnrtu"

    iget-char v5, p0, Lcom/mob/tools/b/f;->b:C

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_4

    const-string v4, "escape sequence  \\\",\\\\,\\/,\\b,\\f,\\n,\\r,\\t  or  \\uxxxx "

    invoke-static {v4, v0}, Lcom/mob/tools/b/f;->a(Ljava/lang/String;I)Z

    move-result v0

    .line 0
    :goto_3
    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_2

    .line 5000
    :cond_4
    iget-char v4, p0, Lcom/mob/tools/b/f;->b:C

    const/16 v5, 0x75

    if-ne v4, v5, :cond_6

    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    invoke-direct {p0}, Lcom/mob/tools/b/f;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    invoke-direct {p0}, Lcom/mob/tools/b/f;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    invoke-direct {p0}, Lcom/mob/tools/b/f;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    invoke-direct {p0}, Lcom/mob/tools/b/f;->c()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    const-string v4, "unicode escape sequence  \\uxxxx "

    invoke-static {v4, v0}, Lcom/mob/tools/b/f;->a(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_3

    .line 0
    :cond_7
    iget-char v4, p0, Lcom/mob/tools/b/f;->b:C

    if-ne v4, v6, :cond_2

    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    move v1, v2

    goto :goto_0

    :cond_8
    const-string v0, "quoted string"

    invoke-static {v0, v3}, Lcom/mob/tools/b/f;->a(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    new-instance v3, Ljava/text/StringCharacterIterator;

    invoke-direct {v3, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/text/CharacterIterator;->first()C

    move-result v1

    iget-char v2, p0, Lcom/mob/tools/b/f;->b:C

    if-eq v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v4, p0, Lcom/mob/tools/b/f;->c:I

    const/4 v1, 0x1

    invoke-interface {v3}, Ljava/text/CharacterIterator;->next()C

    move-result v2

    :goto_1
    const v5, 0xffff

    if-eq v2, v5, :cond_3

    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    move-result v5

    if-eq v2, v5, :cond_2

    :goto_2
    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "literal "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/mob/tools/b/f;->a(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/text/CharacterIterator;->next()C

    move-result v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private c()Z
    .locals 2

    const-string v0, "0123456789abcdefABCDEF"

    iget-char v1, p0, Lcom/mob/tools/b/f;->b:C

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()C
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/b/f;->a:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    iput-char v0, p0, Lcom/mob/tools/b/f;->b:C

    iget v0, p0, Lcom/mob/tools/b/f;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mob/tools/b/f;->c:I

    iget-char v0, p0, Lcom/mob/tools/b/f;->b:C

    return v0
.end method

.method private e()V
    .locals 1

    :goto_0
    iget-char v0, p0, Lcom/mob/tools/b/f;->b:C

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mob/tools/b/f;->d()C

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1000
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 0
    :cond_0
    :goto_0
    return v0

    .line 1000
    :cond_1
    new-instance v2, Ljava/text/StringCharacterIterator;

    invoke-direct {v2, v1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mob/tools/b/f;->a:Ljava/text/CharacterIterator;

    iget-object v1, p0, Lcom/mob/tools/b/f;->a:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->first()C

    move-result v1

    iput-char v1, p0, Lcom/mob/tools/b/f;->b:C

    iput v0, p0, Lcom/mob/tools/b/f;->c:I

    invoke-direct {p0}, Lcom/mob/tools/b/f;->a()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "value"

    invoke-static {v1, v0}, Lcom/mob/tools/b/f;->a(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/mob/tools/b/f;->e()V

    iget-char v1, p0, Lcom/mob/tools/b/f;->b:C

    const v2, 0xffff

    if-eq v1, v2, :cond_0

    const-string v0, "end"

    iget v1, p0, Lcom/mob/tools/b/f;->c:I

    invoke-static {v0, v1}, Lcom/mob/tools/b/f;->a(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method
