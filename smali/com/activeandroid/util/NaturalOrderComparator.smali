.class public Lcom/activeandroid/util/NaturalOrderComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static charAt(Ljava/lang/String;I)C
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 12

    .prologue
    const/16 v11, 0x30

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 69
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move v0, v1

    move v2, v1

    .line 80
    :goto_0
    invoke-static {v8, v2}, Lcom/activeandroid/util/NaturalOrderComparator;->charAt(Ljava/lang/String;I)C

    move-result v3

    .line 81
    invoke-static {v9, v0}, Lcom/activeandroid/util/NaturalOrderComparator;->charAt(Ljava/lang/String;I)C

    move-result v5

    move v4, v2

    move v2, v3

    move v3, v1

    .line 84
    :goto_1
    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v6

    if-nez v6, :cond_0

    if-ne v2, v11, :cond_9

    .line 85
    :cond_0
    if-ne v2, v11, :cond_1

    .line 86
    add-int/lit8 v3, v3, 0x1

    .line 93
    :goto_2
    add-int/lit8 v4, v4, 0x1

    invoke-static {v8, v4}, Lcom/activeandroid/util/NaturalOrderComparator;->charAt(Ljava/lang/String;I)C

    move-result v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 90
    goto :goto_2

    .line 96
    :goto_3
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v7

    if-nez v7, :cond_2

    if-ne v0, v11, :cond_4

    .line 97
    :cond_2
    if-ne v0, v11, :cond_3

    .line 98
    add-int/lit8 v5, v5, 0x1

    .line 105
    :goto_4
    add-int/lit8 v6, v6, 0x1

    invoke-static {v9, v6}, Lcom/activeandroid/util/NaturalOrderComparator;->charAt(Ljava/lang/String;I)C

    move-result v0

    goto :goto_3

    :cond_3
    move v5, v1

    .line 102
    goto :goto_4

    .line 109
    :cond_4
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 110
    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v7, v10}, Lcom/activeandroid/util/NaturalOrderComparator;->compareRight(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_5

    move v0, v7

    .line 125
    :goto_5
    return v0

    .line 115
    :cond_5
    if-nez v2, :cond_6

    if-nez v0, :cond_6

    .line 118
    sub-int v0, v3, v5

    goto :goto_5

    .line 121
    :cond_6
    if-ge v2, v0, :cond_7

    .line 122
    const/4 v0, -0x1

    goto :goto_5

    .line 124
    :cond_7
    if-le v2, v0, :cond_8

    .line 125
    const/4 v0, 0x1

    goto :goto_5

    .line 128
    :cond_8
    add-int/lit8 v2, v4, 0x1

    .line 129
    add-int/lit8 v0, v6, 0x1

    goto :goto_0

    :cond_9
    move v6, v0

    move v0, v5

    move v5, v1

    goto :goto_3
.end method

.method compareRight(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 31
    move v1, v0

    move v2, v0

    .line 40
    :goto_0
    invoke-static {p1, v1}, Lcom/activeandroid/util/NaturalOrderComparator;->charAt(Ljava/lang/String;I)C

    move-result v5

    .line 41
    invoke-static {p2, v0}, Lcom/activeandroid/util/NaturalOrderComparator;->charAt(Ljava/lang/String;I)C

    move-result v6

    .line 43
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_0

    .line 62
    :goto_1
    return v2

    .line 46
    :cond_0
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_1

    move v2, v3

    .line 47
    goto :goto_1

    .line 49
    :cond_1
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_2

    move v2, v4

    .line 50
    goto :goto_1

    .line 52
    :cond_2
    if-ge v5, v6, :cond_4

    .line 53
    if-nez v2, :cond_3

    move v2, v3

    .line 39
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_4
    if-le v5, v6, :cond_5

    .line 58
    if-nez v2, :cond_3

    move v2, v4

    .line 59
    goto :goto_2

    .line 61
    :cond_5
    if-nez v5, :cond_3

    if-nez v6, :cond_3

    goto :goto_1
.end method
