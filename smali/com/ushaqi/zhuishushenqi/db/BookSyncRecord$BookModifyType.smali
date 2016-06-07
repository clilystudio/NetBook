.class public final enum Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FEED_ADD:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

.field public static final enum FEED_REMOVE:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

.field public static final enum SHELF_ADD:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

.field public static final enum SHELF_REMOVE:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

.field public static final enum SYNC_SUCCESS:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

.field private static final synthetic a:[Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    const-string v1, "SHELF_ADD"

    invoke-direct {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->SHELF_ADD:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    const-string v1, "SHELF_REMOVE"

    invoke-direct {v0, v1, v3}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->SHELF_REMOVE:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    const-string v1, "FEED_ADD"

    invoke-direct {v0, v1, v4}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->FEED_ADD:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    const-string v1, "FEED_REMOVE"

    invoke-direct {v0, v1, v5}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->FEED_REMOVE:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    const-string v1, "SYNC_SUCCESS"

    invoke-direct {v0, v1, v6}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->SYNC_SUCCESS:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->SHELF_ADD:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->SHELF_REMOVE:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->FEED_ADD:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->FEED_REMOVE:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->SYNC_SUCCESS:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->a:[Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    return-object v0
.end method

.method public static values()[Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->a:[Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    invoke-virtual {v0}, [Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    return-object v0
.end method
