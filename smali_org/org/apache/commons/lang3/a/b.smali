.class abstract Lorg/apache/commons/lang3/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/lang3/a/b;->a:[Ljava/lang/Class;

    return-void
.end method

.method private static a([Ljava/lang/Class;[Ljava/lang/Class;)F
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)F"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const v5, 0x3dcccccd

    const/4 v3, 0x0

    .line 113
    move v0, v1

    move v2, v3

    .line 114
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_5

    .line 116
    aget-object v4, p0, v0

    .line 117
    aget-object v8, p1, v0

    .line 1132
    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1169
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1172
    invoke-static {v4}, Lorg/apache/commons/lang3/b;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    move-object v6, v4

    move v4, v5

    :goto_1
    move v7, v1

    .line 1174
    :goto_2
    if-eq v6, v8, :cond_3

    const/4 v9, 0x7

    if-ge v7, v9, :cond_3

    .line 1175
    sget-object v9, Lorg/apache/commons/lang3/a/b;->a:[Ljava/lang/Class;

    aget-object v9, v9, v7

    if-ne v6, v9, :cond_0

    .line 1176
    add-float/2addr v4, v5

    .line 1177
    const/4 v9, 0x6

    if-ge v7, v9, :cond_0

    .line 1178
    sget-object v6, Lorg/apache/commons/lang3/a/b;->a:[Ljava/lang/Class;

    add-int/lit8 v9, v7, 0x1

    aget-object v6, v6, v9

    .line 1174
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    move-object v6, v4

    move v4, v3

    .line 1136
    :goto_3
    if-eqz v6, :cond_2

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1137
    invoke-virtual {v8}, Ljava/lang/Class;->isInterface()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v6, v8}, Lorg/apache/commons/lang3/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1143
    const/high16 v7, 0x3e800000

    add-float/2addr v4, v7

    .line 1153
    :cond_2
    if-nez v6, :cond_3

    .line 1154
    const/high16 v6, 0x3fc00000

    add-float/2addr v4, v6

    .line 118
    :cond_3
    add-float/2addr v2, v4

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1146
    :cond_4
    const/high16 v7, 0x3f800000

    add-float/2addr v4, v7

    .line 1147
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_3

    .line 120
    :cond_5
    return v2

    :cond_6
    move-object v6, v4

    move v4, v3

    goto :goto_1
.end method

.method static a([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p2, p0}, Lorg/apache/commons/lang3/a/b;->a([Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v0

    .line 101
    invoke-static {p2, p1}, Lorg/apache/commons/lang3/a/b;->a([Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v1

    .line 102
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/reflect/AccessibleObject;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 55
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    .line 58
    check-cast v0, Ljava/lang/reflect/Member;

    .line 59
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 1075
    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_2

    move v0, v1

    .line 59
    :goto_1
    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 1075
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static a(Ljava/lang/reflect/Member;)Z
    .locals 1

    .prologue
    .line 84
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
