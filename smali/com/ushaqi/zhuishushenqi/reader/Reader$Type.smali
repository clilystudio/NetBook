.class public final enum Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHAPTER:Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

.field public static final enum TOC:Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

.field private static final synthetic a:[Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

    const-string v1, "CHAPTER"

    invoke-direct {v0, v1, v2, v2}, Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;->CHAPTER:Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

    const-string v1, "TOC"

    invoke-direct {v0, v1, v3, v3}, Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;->TOC:Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;->CHAPTER:Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;->TOC:Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;->a:[Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;->code:I

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

    return-object v0
.end method

.method public static values()[Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;->a:[Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

    invoke-virtual {v0}, [Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

    return-object v0
.end method


# virtual methods
.method public final getListener(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/reader/ae;
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;->code:I

    if-nez v0, :cond_0

    .line 54
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/reader/ae;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->b(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/reader/ae;

    move-result-object v0

    goto :goto_0
.end method
