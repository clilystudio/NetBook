.class final enum Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DARK:Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

.field public static final enum LIGHT:Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

.field private static final synthetic a:[Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

    const-string v1, "LIGHT"

    invoke-direct {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;->LIGHT:Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

    new-instance v0, Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

    const-string v1, "DARK"

    invoke-direct {v0, v1, v3}, Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;->DARK:Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

    const/4 v0, 0x2

    new-array v0, v0, [Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

    sget-object v1, Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;->LIGHT:Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

    aput-object v1, v0, v2

    sget-object v1, Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;->DARK:Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

    aput-object v1, v0, v3

    sput-object v0, Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;->a:[Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;
    .locals 1

    .prologue
    .line 28
    const-class v0, Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

    return-object v0
.end method

.method public static values()[Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;->a:[Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

    invoke-virtual {v0}, [Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

    return-object v0
.end method
