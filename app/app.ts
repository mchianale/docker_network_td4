import * as express from "express";
import {Request, Response} from "express";
const app = express();
const port = 8080;

app.get('/health', (req: Request, res: Response) => {
    res.status(200).send('OK');
});

app.listen(port, () => {
    console.log(`App listening at http://localhost:${port}`);
});
