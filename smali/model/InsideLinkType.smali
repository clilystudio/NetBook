.class public final enum Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

.field public static final enum BOOK:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

.field public static final enum BOOKLIST:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

.field public static final enum GAME:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

.field public static final enum LINK:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

.field public static final enum OTHER:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

.field public static final enum POST:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

.field public static final enum POST_HELP:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

.field public static final enum POST_REVIEW:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

.field private static final types:[Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;


# instance fields
.field private label:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    const-string v1, "GAME"

    const-string v2, "game"

    invoke-direct {v0, v1, v4, v2}, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->GAME:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    .line 9
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    const-string v1, "POST"

    const-string v2, "post"

    invoke-direct {v0, v1, v5, v2}, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->POST:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    .line 10
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    const-string v1, "BOOK"

    const-string v2, "book"

    invoke-direct {v0, v1, v6, v2}, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->BOOK:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    .line 11
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    const-string v1, "BOOKLIST"

    const-string v2, "booklist"

    invoke-direct {v0, v1, v7, v2}, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->BOOKLIST:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    .line 12
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    const-string v1, "LINK"

    const-string v2, "link"

    invoke-direct {v0, v1, v8, v2}, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->LINK:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    .line 13
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    const-string v1, "OTHER"

    const/4 v2, 0x5

    const-string v3, "other"

    invoke-direct {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->OTHER:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    .line 14
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    const-string v1, "POST_HELP"

    const/4 v2, 0x6

    const-string v3, "post-help"

    invoke-direct {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->POST_HELP:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    .line 15
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    const-string v1, "POST_REVIEW"

    const/4 v2, 0x7

    const-string v3, "post-review"

    invoke-direct {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->POST_REVIEW:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    .line 6
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->GAME:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->POST:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->BOOK:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->BOOKLIST:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->LINK:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->OTHER:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->POST_HELP:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->POST_REVIEW:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->$VALUES:[Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    .line 17
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->GAME:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->POST:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->BOOK:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->BOOKLIST:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->OTHER:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->LINK:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->POST_HELP:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->POST_REVIEW:Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->types:[Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->name:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static build(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;
    .locals 5

    .prologue
    .line 49
    sget-object v2, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->types:[Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 50
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    :goto_1
    return-object v0

    .line 49
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    return-object v0
.end method

.method public static values()[Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->$VALUES:[Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    invoke-virtual {v0}, [Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    return-object v0
.end method


# virtual methods
.method public final getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final setLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->label:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->value:Ljava/lang/String;

    .line 42
    return-void
.end method
