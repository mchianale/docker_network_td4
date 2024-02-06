import * as express from "express";
import {Request, Response} from "express";
const app = express();
const port = 8080
// Get Liveliness
app.get('', (req: Request, res: Response) => {
    return res.status(200).send('API LIVE');
});
// Get health
app.get('/health', (req: Request, res: Response) => {
    res.status(200).send('OK');
});
app.listen(port, () => {
    console.log(`App listening at http://localhost:${port}`);
});
